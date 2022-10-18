######################## GNU General Public License 2.0 ########################
##                                                                            ##
## Copyright (C) 2022 Kevin Matthes                                           ##
##                                                                            ##
## This program is free software; you can redistribute it and/or modify       ##
## it under the terms of the GNU General Public License as published by       ##
## the Free Software Foundation; either version 2 of the License, or          ##
## (at your option) any later version.                                        ##
##                                                                            ##
## This program is distributed in the hope that it will be useful,            ##
## but WITHOUT ANY WARRANTY; without even the implied warranty of             ##
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              ##
## GNU General Public License for more details.                               ##
##                                                                            ##
## You should have received a copy of the GNU General Public License along    ##
## with this program; if not, write to the Free Software Foundation, Inc.,    ##
## 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                ##
##                                                                            ##
################################################################################

################################################################################
##
##  AUTHOR      Kevin Matthes
##  BRIEF       The recipes in order to compile the provided executable.
##  COPYRIGHT   GPL-2.0
##  DATE        2022
##  FILE        .justfile
##  NOTE        See `LICENSE' for full license.
##              See `README.md' for project details.
##
################################################################################

# Synonyms for the configured recipes.
alias a     := all
alias b     := build
alias clr   := clear
alias d     := doxygen
alias dirs  := directories
alias i     := install
alias v     := valgrind
alias ver   := bump



# Compiler flags.
c99     := '-std=c99'
exe     := '-fPIE'
f18     := '-std=f2018'
flags   := '-Wall -Werror -Wextra -Wpedantic'
lib     := '-c -fPIC'

# Linker flags.
lflags  := '-L. -lgaf18'

# Main source files.
source  := 'src/main.'

# Targets.
application := 'git-aliases'
library     := 'libgaf18.a'
target      := 'target/' + application

# Valgrind settings.
vflags  := '--leak-check=full --redzone-size=512 --show-leak-kinds=all'

# Settings for the supported language modes.
c99-exe := c99 + ' ' + exe + ' ' + flags
c99-lib := c99 + ' ' + lib + ' ' + flags
exe-c99 := target + '-c99'
exe-f18 := target + '-f18'
f18-exe := f18 + ' ' + exe + ' ' + flags
f18-lib := f18 + ' ' + lib + ' ' + flags
lnk-c99 := lflags + ' -lgfortran'
lnk-f18 := '-I. ' + lflags
src-c99 := source + 'c'
src-f18 := source + 'f08'



# The default recipe to execute.
@default: valgrind

# Create the alias command submodule.
@aliases: interfaces logic
    gfortran {{f18-lib}} lib/aliases.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Execute all configured recipes.
@all: clear doxygen valgrind

# Compile the target application.
@build: directories lib
    gfortran {{f18-exe}} {{src-f18}} -o {{exe-f18}} {{lnk-f18}}
    gcc      {{c99-exe}} {{src-c99}} -o {{exe-c99}} {{lnk-c99}}

# Increment the version numbers.
@bump part:
    bump2version {{part}}
    scriv collect

# Remove build and documentation artifacts.
@clear:
    git clean -dfx

# Create the required directories for the other recipes.
@directories:
    mkdir -p ~/.local/bin/ target/

# Create the Doxygen documentation for this project.
@doxygen:
    doxygen doxygen.cfg
    cd latex/ && latexmk -f -r ../.latexmkrc --silent refman
    cp latex/refman.pdf doxygen.pdf

# Copy the target application to this user's path.
@install: build
    cp {{exe-f18}} ~/.local/bin/{{application}}

# Create the Fortran interfaces.
@interfaces:
    gfortran {{f18-lib}} src/lib.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Create the project library.
@lib: aliases interfaces logic

# Create the business logic submodule.
@logic: interfaces
    gfortran {{f18-lib}} lib/logic.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Analyse the memory management of the target application.
@valgrind: build
    valgrind {{vflags}} ./{{exe-c99}}
    valgrind {{vflags}} ./{{exe-f18}}

################################################################################
