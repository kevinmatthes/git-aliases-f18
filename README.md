<!---------------------- GNU General Public License 3.0 ------------------------
--                                                                            --
-- Copyright (C) 2022 Kevin Matthes                                           --
--                                                                            --
-- This program is free software: you can redistribute it and/or modify       --
-- it under the terms of the GNU General Public License as published by       --
-- the Free Software Foundation, either version 3 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              --
-- GNU General Public License for more details.                               --
--                                                                            --
-- You should have received a copy of the GNU General Public License          --
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.     --
--                                                                            --
------------------------------------------------------------------------------->

<!------------------------------------------------------------------------------
--
--  AUTHOR      Kevin Matthes
--  BRIEF       Important information regarding this project.
--  COPYRIGHT   GPL-3.0
--  DATE        2022
--  FILE        README.md
--  NOTE        See `LICENSE' for full license.
--
------------------------------------------------------------------------------->

# git-aliases-f18

## Summary

[![](https://github.com/kevinmatthes/git-aliases-f18/workflows/CI/badge.svg)](https://github.com/kevinmatthes/git-aliases-f18/workflows/CI)
[![](https://github.com/kevinmatthes/git-aliases-f18/workflows/cffconvert/badge.svg)](https://github.com/kevinmatthes/git-aliases-f18/workflows/cffconvert)

Automatically configure Git alias commands with this Fortran 2018 application.

1. [License](#license)
2. [Software Requirements](#software-requirements)
3. [Description](#description)
4. [Build](#build)

## License

[![](https://img.shields.io/github/license/kevinmatthes/git-aliases-f18)](https://github.com/kevinmatthes/git-aliases-f18)

This project's license is **GPL-3.0**.  The whole license text can be found in
`LICENSE` in the main directory of this repository.  The brief version is as
follows:

> Copyright (C) 2022 Kevin Matthes
>
> This program is free software: you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation, either version 3 of the License, or
> (at your option) any later version.
>
> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License
> along with this program.  If not, see <https://www.gnu.org/licenses/>.

## Software Requirements

| Requirement       | Type          | Role                                  |
|:------------------|:-------------:|:--------------------------------------|
| bump2version      | Python CLI    | automatic version increment           |
| Doxygen           | application   | source code documentation             |
| G++               | application   | C++11 compiler                        |
| GCC               | application   | C99 compiler                          |
| GFortran          | application   | Fortran 2018 compiler                 |
| Git               | application   | application to configure              |
| Just              | Rust binary   | execution of the build instructions   |
| Latexmk           | application   | LaTeX compilation of Doxygen manual   |
| Scriv             | Python CLI    | changelog management                  |
| TeX Live (full)   | package       | LaTeX environment for Doxygen manual  |
| Valgrind          | application   | memory leak detection                 |

This project is written in Fortran 2018 such that its build requires a compiler
supporting this standard.  This project relies on **GFortran** therefore.  The
business logic also has C and C++ bindings which can be compiled to a C99 and
C++11 version using **GCC** and **G++**, respectively.

The purpose of this application is to configure alias commands for **Git**.
Thus, an installation of Git needs to be ensured.  Furthermore, Git is employed
to remove the build artifacts upon request.

The build is organised with **Just**.  The corresponding `.justfile` does not
only take care for the compilation of the applications but also for their
documentation and testing.

The documentation is generated by **Doxygen**.  The configured output formats
are listed in the following.

* HTML
* LaTeX
* UNIX manual pages

In order to finalise the LaTeX documentation, an appropriate LaTeX distribution
is required.  A *full* installation of **TeX Live** is recommended.  This
project employs **Latexmk** as LaTeX build manager for the manual finalisation.

The memory management of the compiled applications is analysed by **Valgrind**
upon request.

In order to simplify the maintenance, **bump2version** as well as **Scriv** are
used to automate the release generation.  Scriv will compile the changelog on
release after all version numbers were incremented by bump2version.

## Description

This repository contains the source code of an application named `git-aliases`.
When compiled, it will configure the hard coded Git alias commands.  A common
use case of this application is hence the initialisation of Git in a new user
account.

`git-aliases` can be freely expanded with further commands.  Furthermore, this
tool can be integrated into Git, at option.  Due to its naming convention, Git
will consider all applications prefixed with `git-` associated commands.  See
[the book by Chacon and Straub](CITATION.cff#L55) for details.

When calling the application, it will show some default information about itself
in the first five lines.  These information are about the application's name and
version as well as the copyright information.  After three empty lines, a table
will follow with information about the commands configured by this application.
On the left-hand side, there are the names of the aliases listed, whereas on the
right-hand side, there is a short description about what this alias command is
supposed to do.  The writing of a line indicates that the respective alias was
configured successfully.

## Build

The build routine is organised by Just and defined in the `.justfile` in the
repository root.  To build the applications, one of the following instructions
can be executed.

```bash
just b
just build
```

In addition, an automatic source code documentation with Doxygen is configured.
One of the following commands will invoke the compilation.

```bash
just d
just doxygen
```

The correctness of the applications' memory management is ensured by Valgrind.
The following instructions are synonymous for calling the memory management
analysis.

```bash
just v
just valgrind
```

If the compilation of both the applications and their documentation is wished,
the following instructions can be executed.  This will also invoke the memory
management analysis.

```bash
just
just a
just all
```

<!----------------------------------------------------------------------------->
