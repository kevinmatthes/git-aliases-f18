Added
.....

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

- GitHub Action:  Valgrind memory management analysis

- GitHub Action:  version increment check

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
