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
--  COPYRIGHT   (C) 2022 Kevin Matthes.
--              This file is licensed GPL 2 as of June 1991.
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
therefore is configured as Just recipe.  This test uses *Valgrind* and is
optional.

## Description

This repository contains the source code of an application named `ga-f18`.  When
compiled, it will configure the hard coded Git alias commands.  A common use
case of this application is hence the initialisation of Git in a new user
account.

`ga-f18` can be freely expanded with further commands.  The procedure in order
to do so is illustrated by the source files in the `aliases/` directory of this
repository.

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

* documentation with Doxygen
* memory management
* string concatenation in subroutine calls
* subroutines
* synchronous invocation of applications from a program

<!----------------------------------------------------------------------------->
