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
alias i     := install
alias v     := valgrind



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
vall    := '--show-leak-kinds=all'
verror  := '--error-exitcode=42'
vfull   := '--leak-check=full'
vred    := '--redzone-size=512'
vflags  := verror + ' ' + vfull + ' ' + vred + ' ' + vall

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
@aliases: logic
    just compile src/aliases.f08

# Execute all configured recipes.
@all: clear doxygen valgrind

# Compile the target applications.
@build: directories library
    gcc      {{c99-exe}} {{src-c99}} -o {{exe-c99}} {{lnk-c99}}
    gfortran {{f18-exe}} {{src-f18}} -o {{exe-f18}} {{lnk-f18}}

# Increment the version numbers.
@bump part:
    bump2version {{part}}
    scriv collect

# Remove build and documentation artifacts.
@clear:
    git clean -dfx

# Compile the given source file and add it to the library.
@compile source_file:
    gfortran {{f18-lib}} {{source_file}}
    ar rsv {{library}} *.o
    rm -rf *.o

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
    just compile src/lib.f08

# Create the project library.
@library: aliases

# Create the business logic submodule.
@logic: interfaces
    just compile src/logic.f08

# Test the memory management of the given executable.
@test name: build
    valgrind {{vflags}} {{name}}

# Analyse the memory management of the target application.
@valgrind: build
    just test {{exe-c99}}
    just test {{exe-f18}}

################################################################################
