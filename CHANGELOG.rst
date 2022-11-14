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

- GitHub Action:  CFF validation

- GitHub Issue Template:  new alias

- license:  GPL-2.0

- module for project logic

- submodule for alias commands

- submodule for business logic

.. -------------------------------------------------------------------------- ..
