<!---------------------- GNU General Public License 2.0 ------------------------
--                                                                            --
-- Copyright (C) 2022 Kevin Matthes                                           --
--                                                                            --
-- This program is free software; you can redistribute it and/or modify       --
-- it under the terms of the GNU General Public License as published by       --
-- the Free Software Foundation; either version 2 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              --
-- GNU General Public License for more details.                               --
--                                                                            --
-- You should have received a copy of the GNU General Public License along    --
-- with this program; if not, write to the Free Software Foundation, Inc.,    --
-- 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                --
--                                                                            --
------------------------------------------------------------------------------->

<!------------------------------------------------------------------------------
--
--  AUTHOR      Kevin Matthes
--  BRIEF       Important information regarding this project.
--  COPYRIGHT   GPL-2.0
--  DATE        2022
--  FILE        README.md
--  NOTE        See `LICENSE' for full license.
--
------------------------------------------------------------------------------->

# git-aliases-f18

## Summary

Automatically configure Git alias commands with this Fortran 2018 application.

## License

This project's license is **GPL-2.0** (as of June 1991).  The whole license text
can be found in `LICENSE` in the main directory of this repository.  The brief
version is as follows:

> Copyright (C) 2022 Kevin Matthes
>
> This program is free software; you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation; either version 2 of the License, or
> (at your option) any later version.
>
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License along
> with this program; if not, write to the Free Software Foundation, Inc.,
> 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

## Software Requirements

| Requirement       | Type          | Role                                  |
|:------------------|:-------------:|:--------------------------------------|
| Doxygen           | application   | source code documentation             |
| GFortran          | application   | Fortran 2018 compiler                 |
| Git               | application   | application to configure              |
| Just              | Rust binary   | execution of the build instructions   |
| Latexmk           | application   | LaTeX compilation of Doxygen manual   |
| TeX Live (full)   | package       | LaTeX environment for Doxygen manual  |
| Valgrind          | application   | memory leak detection                 |

Since the application is written in Fortran 2018, a Fortran compiler is a
mandatory software requirement.  This project will use *GFortran* for this task.

The purpose of this application is to configure alias commands for *Git*.  Thus,
an installation of Git needs to be ensured.  Furthermore, Git is employed to
perform several tasks in the build routine.

The compilation of the source code will be invoked automatically by *Just*.  All
required steps are defined in the `.justfile` and explained in the corresponding
section below.

The source code contains docstrings to be processed by *Doxygen*.  By default,
both an HTML and a LaTeX manual will be compiled.  They are saved in dedicated
directories in the repository's root.  The LaTeX manual needs to be finalised
with according compilers.  Their invocation is managed by Doxygen itself by the
provision of multiple build scripts.  Instead of relying on them, this project
defines an equal finalisation routine based upon *Latexmk*.  This finalisation
will be called automatically by Just.  Please note that the compilation of a
LaTeX project requires the installation of a LaTeX distribution.  The
recommended distribution is the *full* installation of *TeX Live*.

In order to demonstrate the appropriate handling of memory allocations, a test
therefore is configured as a Just recipe.  This test uses *Valgrind* and is
optional.

## Description

This repository contains the source code of an application named `git-aliases`.
When compiled, it will configure the hard coded Git alias commands.  A common
use case of this application is hence the initialisation of Git in a new user
account.

`git-aliases` can be freely expanded with further commands.  The procedure in
order to do so is illustrated by the source files in the `aliases/` directory
of this repository.

This tool can be integrated into Git, at option.  Due to its naming convention,
Git will consider all applications prefixed with `git-` associated commands.
This feature offers two benefits.  One can not only configure all desired alias
commands with this tool but also request a summary for the aliases set up by
this application with Git itself.

When calling the application, it will show some default information about itself
in the first five lines.  These information are about the application's name and
version as well as the copyright information.  After three empty lines, a table
will follow with information about the commands configured by this application.
On the left-hand side, there are the names of the aliases listed, whereas on the
right-hand side, there is a short description about what this alias command is
supposed to do.  The writing of a line indicates that the respective alias was
configured successfully.

Despite the actual functionality, this project also demonstrates the following
features of Fortran 2018:

* documentation of Fortran projects with Doxygen
* Fortran's automatic memory management
* Fortran's module system, including submodules
* string concatenation in subroutine calls
* subroutine definition
* synchronous invocation of external applications from a Fortran program

## Build Instructions

All build instructions are configured as Just recipes in the `.justfile` located
in the repository root.  An overview about all defined recipes can be requested
by calling the following command in a terminal.

```
just --list
```

### Default Recipe

```
just
```

When calling Just without any recipe, the default recipe will be executed.  This
is the Valgrind check for memory leaks.

### Alias Module Compilation

```
just aliases
```

This recipe will compile the library module containing the provided alias
commands.  This is an internal recipe invoked by the build routine, if required.

### All Recipes

```
just a
just all
```

This recipe is designed to invoke all meaningful other recipes.  This utility
recipe is intended as an abbreviation during the development of this project.
All meaningful recipes are executed in the following order.  The purposes of
the recipes are explained in subsequent sections.

1. `just clear`
2. `just doxygen`
3. `just valgrind`

Thereby, all required directories as well as the target application itself will
be created automatically.

### Build of the Application

```
just b
just build
```

The application itself will be compiled and saved in the directory `target/`.
This directory will be created automatically during the build process and is
situated in the repository's root.

### Removal of Build Artifacts

```
just clr
just clear
```

All build artifacts will be removed from the whole repository.  The selection of
the files and directories to remove is controlled by the `.gitignore` as the
respective Git command is invoked by this recipe.

### Creation of Directories

```
just dirs
just directories
```

For both the compilation and the installation, several directories are required.
They are created automatically when the respective commands are invoked.

This is an internal utility recipe.  It will be invoked automatically by other
recipes, if required.

### Doxygen Manual

```
just d
just doxygen
```

All source files are equipped with docstrings in order to explain the code.
Doxygen will compile these docstrings to manuals in the following formats:

* HTML
* PDF
* UNIX manual pages

The finalisation of the LaTeX manual is defined as a hard coded part of this
recipe.  The compiled LaTeX manual will be copied to the repository root.

### Installation

```
just i
just install
```

The compiled application is copied to the user's home directory's storage for
user defined binary executables.  This is `~/.local/bin/`.  If it should not
already exist, it will be created.

### Library Module Compilation

```
just library
```

This recipe will compile the library module containing the business logic of
this project.  This is an internal recipe invoked by the build routine, if
required.

### Valgrind Memory Management Analysis

```
just v
just valgrind
```

This an optional recipe to ensure that the memory allocations are handled
appropriately by the target application.

<!----------------------------------------------------------------------------->
