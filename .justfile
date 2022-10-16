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



# Settings for the recipes.
flags   := '-std=f2018 -Wall -Werror -Wextra -Wpedantic'
library := 'libgaf18.a'



# The default recipe to execute.
@default: valgrind

# Create the alias command submodule.
@aliases: interfaces logic
    gfortran -c {{flags}} lib/aliases.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Execute all configured recipes.
@all: clear doxygen valgrind

# Compile the target application.
@build: directories lib
    gfortran {{flags}} src/main.f08 -o target/git-aliases -I. -L. -lgaf18

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
    cp target/git-aliases ~/.local/bin/

# Create the Fortran interfaces.
@interfaces:
    gfortran -c {{flags}} src/lib.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Create the project library.
@lib: aliases interfaces logic

# Create the business logic submodule.
@logic: interfaces
    gfortran -c {{flags}} lib/logic.f08
    ar rsv {{library}} *.o
    rm -rf *.o

# Analyse the memory management of the target application.
@valgrind: build
    valgrind \
        --leak-check=full --redzone-size=512 --show-leak-kinds=all \
        ./target/git-aliases

################################################################################
