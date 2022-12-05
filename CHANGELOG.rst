.. --------------------- GNU General Public License 3.0 --------------------- ..
..                                                                            ..
.. Copyright (C) 2022 Kevin Matthes                                           ..
..                                                                            ..
.. This program is free software: you can redistribute it and/or modify       ..
.. it under the terms of the GNU General Public License as published by       ..
.. the Free Software Foundation, either version 3 of the License, or          ..
.. (at your option) any later version.                                        ..
..                                                                            ..
.. This program is distributed in the hope that it will be useful,            ..
.. but WITHOUT ANY WARRANTY; without even the implied warranty of             ..
.. MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              ..
.. GNU General Public License for more details.                               ..
..                                                                            ..
.. You should have received a copy of the GNU General Public License          ..
.. along with this program.  If not, see <https://www.gnu.org/licenses/>.     ..
..                                                                            ..
.. -------------------------------------------------------------------------- ..

.. -------------------------------------------------------------------------- ..
..
..  AUTHOR      Kevin Matthes
..  BRIEF       The development history of this project.
..  COPYRIGHT   GPL-3.0
..  DATE        2022
..  FILE        CHANGELOG.rst
..  NOTE        See `LICENSE' for full license.
..              See `README.md' for project details.
..
.. -------------------------------------------------------------------------- ..

.. -------------------------------------------------------------------------- ..
..
.. _changelog.d: changelog.d/
.. _Keep a Changelog: https://keepachangelog.com/en/1.0.0/
.. _Scriv: https://github.com/nedbat/scriv
..
.. _[CS14]: CITATION.cff#L55
.. _[MRC18]: CITATION.cff#L108
..
.. -------------------------------------------------------------------------- ..

Changelog
=========

All notable changes to this project are documented in this file.  The format is
based on `Keep a Changelog`_ and optimised for maintenance with `Scriv`_.

Unreleased
----------

All pending changelog entries are stored in `changelog.d`_.

.. scriv-insert-here

.. _changelog-0.1.4:

0.1.4 — 2022-12-05
------------------

Added
.....

- GitHub Action workflow:  Scriv fragment creation

- settings for Bors

- Bors badge to README

- license badge to summary section of README

- automatic release date version update for CITATION.cff

- GitHub Action workflow:  preparations for major release

- GitHub Action workflow:  preparations for minor release

Changed
.......

- adjust the descriptions of the GitHub Action workflows

- rename some GitHub Action workflows

- rename some GitHub Action workflow jobs

- split library source file into one included source file per submodule

- adjust GitHub Action workflows to support Bors

- always run CFF validation

- rename release GitHub Action workflow

Fixed
.....

- rename all occurrences of "GitHub Action" in CHANGELOG to "GitHub Action
  workflow" where appropriate

.. _changelog-0.1.3:

0.1.3 — 2022-11-25
------------------

Added
.....

- C++ bindings for subroutine ``backup``

- C++ bindings for subroutine ``backupdestination``

- C++ bindings for subroutine ``bone``

- C++ bindings for subroutine ``bugfix``

- C++ bindings for subroutine ``checkin``

- C++ bindings for subroutine ``complain``

- C++ bindings for subroutine ``configure``

- C++ bindings for subroutine ``create``

- C++ bindings for subroutine ``delbranch``

- C++ bindings for subroutine ``ff``

- C++ bindings for subroutine ``goto_git``

- C++ bindings for subroutine ``grab``

- C++ bindings for subroutine ``graph``

- C++ bindings for subroutine ``header``

- C++ bindings for subroutine ``newbranch``

- C++ bindings for subroutine ``noff``

- C++ bindings for subroutine ``preview``

- C++ bindings for subroutine ``rewind_git``

- C++ bindings for subroutine ``savetags``

- C++ bindings for subroutine ``store``

- C++ bindings for subroutine ``subinit``

- C++ bindings for subroutine ``tidy``

- C++ bindings for subroutine ``tws``

- C++ bindings for subroutine ``unconfigure``

- C++ bindings for subroutine ``verbose``

- C++ bindings for subroutine ``view``

- C++ bindings for subroutine ``whereami``

- C++ bindings for subroutine ``whichremotes``

- C++ bindings for subroutine ``withdraw``

- C++ header file for Fortran symbols with C bindings

- C++ main source file for C++11 Edition of the target executable

- language mode:  C++11

- GitHub Action workflow:  preparations for patch release

Fixed
.....

- ``grab``:  now also pull updated tags

.. _changelog-0.1.2:

0.1.2 — 2022-11-14
------------------

Added
.....

- mark all non-``pure`` procedures explicitly ``impure``

- test recipe whether the automatic version increment still works

- utility recipes for the respective version increments

- Dependabot:  GitHub Action setup

- Dependabot:  Git submodule setup

- badge:  bump2version

- badge:  cffconvert

- badge:  license

- badge:  valgrind

- C bindings for subroutine ``backup``

- C bindings for subroutine ``backupdestination``

- C bindings for subroutine ``bone``

- C bindings for subroutine ``bugfix``

- C bindings for subroutine ``checkin``

- C bindings for subroutine ``complain``

- C bindings for subroutine ``create``

- C bindings for subroutine ``delbranch``

- C bindings for subroutine ``ff``

- C bindings for subroutine ``goto_git``

- C bindings for subroutine ``grab``

- C bindings for subroutine ``graph``

- C bindings for subroutine ``newbranch``

- C bindings for subroutine ``noff``

- C bindings for subroutine ``preview``

- C bindings for subroutine ``rewind_git``

- C bindings for subroutine ``savetags``

- C bindings for subroutine ``store``

- C bindings for subroutine ``subinit``

- C bindings for subroutine ``tidy``

- C bindings for subroutine ``tws``

- C bindings for subroutine ``unconfigure``

- C bindings for subroutine ``verbose``

- C bindings for subroutine ``view``

- C bindings for subroutine ``whereami``

- C bindings for subroutine ``whichremotes``

- C bindings for subroutine ``withdraw``

- C bindings for subroutine ``configure``

- C bindings for subroutine ``header``

- C header file for Fortran symbols with C bindings

- C main source file for C99 Edition of the target executable

- language mode:  C99

- position independant code compilation (library build)

- position independant executable compilation (application build)

- Dependabot:  pip setup

- GitHub Action workflow:  Valgrind memory management analysis

- GitHub Action workflow:  version increment check

- Python 3 software requirements list

- subroutine ``configure``:  summary of all Git alias commands to set up

- `[MRC18]`_ Michael Metcalf, John Reid, and Malcolm Cohen.  *Modern Fortran
  Explained.  Incorporating Fortran 2018.*  2nd Edition.  Oxford:  Oxford
  University Press, 2018.  ISBN:  978-0-19-881188-6.

- ``non_intrinsic`` keyword for all non-intrinsic module imports

- Doxygen settings:  comment footer

- software requirement:  GCC

Changed
.......

- license:  GPL-3.0

- rename source file of ``goto`` alias

- rename source file of ``rewind`` alias

- adjust documentation enhancement request issue form

- adjust general bug report issue form

- adjust general feature request issue form

- adjust maintenance request issue form

- adjust new alias feature request issue form

- make ``all`` the default recipe

- shorten description of build instructions

- change visibility of subroutine ``git`` to private

- move all alias definitions to ``src/``

- move all business logic source files to ``src/``

- shorten README description

- add suffix with language and standard information to main build target

- adjust documentation of ``src/main.f08``

- build routine:  add global variables

- Doxygen settings:  adjust indentation

- Doxygen settings:  adjust tracked paths

- let main program call ``configure`` instead of calling every alias one by one

- adjust indentation of all Fortran source files

- rename all Fortran source files from extension ``*.f`` to extension ``*.f08``

- update submodule ``literature``

- use GitHub Action for Python 3 dependency installation instead of command
  line instructions

- description of Scriv in the software requirements table

Fixed
.....

- adjust indentation

- adjust sorting of interfaces in main library source file

- rely on host association instead of importing the called public procedures
  explicitly

- redundant build instructions

- Valgrind now exits non-zero on error

- set default visibility of all library symbols to ``private``

- update outdated README description

- make link to `[CS14]`_ point to the correct CFF line

- sort Fortran subroutine interfaces by visibility and category

Removed
.......

- shortcut for recipe ``bump``

- shortcut for recipe ``directories``

- GitHub Issue Form:  bug report (outdated submodule)

.. _changelog-0.1.1:

0.1.1 — 2022-10-15
------------------

Added
.....

- create ``header.f`` to encapsulate the calls to ``self_information`` and
  ``table_header``

- add Scriv to build routine

- directory:  ``changelog.d``

- general configuration file ``setup.cfg``

- settings for Scriv

- GitHub Issue Form:  bug report (general)

- GitHub Issue Form:  bug report (outdated submodule)

- GitHub Issue Form:  documentation (enhancement request)

- GitHub Issue Form:  feature request (general)

- GitHub Issue Form:  maintenance request

- add link target to the section for v0.1.0 in CHANGELOG

- add newlines between recent CHANGELOG entries

Changed
.......

- bump2version:  track Scriv settings

- description of the version increment recipe

- enhance the documentation of the main library module

- change visibility of subroutine ``self_information`` to private

- change visibility of subroutine ``table_header`` to private

- add Scriv as software requirement

- optimise CHANGELOG for maintenance with Scriv

- rename ``CHANGELOG.md`` to ``CHANGELOG.rst``

- GitHub Issue Template:  feature request (new alias)

- update CFF references

- adjust bump2version settings

- move all link targets of the CHANGELOG entries to the top of the CHANGELOG

- change visibility of subroutine ``overview`` to private

- move all alias definitions to ``lib/aliases/``

- move all business logic symbols to ``lib/logic/``

- rename ``lib/project.f`` to ``src/lib.f``

- build routine:  compile only main source file

- Doxygen settings:  adjust input directories

- Doxygen settings:  beautify indentation of multiline settings

Fixed
.....

- unify naming style of bump2version ("bump2version" instead of
  "``bump2version``")

Removed
.......

- version prefix (``v``) in ``CITATION.cff``

.. _changelog-0.1.0:

0.1.0 — 2022-10-08
------------------

Added
.....

- alias:  ``backup``

- alias:  ``backupdestination``

- alias:  ``bone``

- alias:  ``bugfix``

- alias:  ``checkin``

- alias:  ``complain``

- alias:  ``create``

- alias:  ``delbranch``

- alias:  ``ff``

- alias:  ``goto``

- alias:  ``grab``

- alias:  ``graph``

- alias:  ``newbranch``

- alias:  ``noff``

- alias:  ``preview``

- alias:  ``rewind``

- alias:  ``savetags``

- alias:  ``store``

- alias:  ``subinit``

- alias:  ``tidy``

- alias:  ``tws``

- alias:  ``unconfigure``

- alias:  ``verbose``

- alias:  ``view``

- alias:  ``whereami``

- alias:  ``whichremotes``

- alias:  ``withdraw``

- basic citation meta data

- configuration file for bump2version

- create ``.gitignore``

- create ``.justfile``

- create ``.latexmkrc``

- create main source file

- create repository README

- create this changelog

- create this repository

- define Git invocation subroutine

- define self information subroutine

- define summary subroutine for aliases to be configured

- define table header subroutine

- Doxygen settings:  Fortran presets

- Doxygen settings:  literature databases

- GitHub Action workflow:  CFF validation

- GitHub Issue Template:  new alias

- license:  GPL-2.0

- module for project logic

- submodule for alias commands

- submodule for business logic

.. -------------------------------------------------------------------------- ..
