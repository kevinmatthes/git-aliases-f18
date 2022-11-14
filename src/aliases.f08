!!!!!!!!!!!!!!!!!!!!!!!! GNU General Public License 3.0 !!!!!!!!!!!!!!!!!!!!!!!!
!!                                                                            !!
!! Copyright (C) 2022 Kevin Matthes                                           !!
!!                                                                            !!
!! This program is free software: you can redistribute it and/or modify       !!
!! it under the terms of the GNU General Public License as published by       !!
!! the Free Software Foundation, either version 3 of the License, or          !!
!! (at your option) any later version.                                        !!
!!                                                                            !!
!! This program is distributed in the hope that it will be useful,            !!
!! but WITHOUT ANY WARRANTY; without even the implied warranty of             !!
!! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              !!
!! GNU General Public License for more details.                               !!
!!                                                                            !!
!! You should have received a copy of the GNU General Public License          !!
!! along with this program.  If not, see <https://www.gnu.org/licenses/>.     !!
!!                                                                            !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \file aliases.f08
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \author      Kevin Matthes
!> \copyright   GPL-3.0
!> \date        2022
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> \brief   The Git alias commands `git-aliases` provides.
!>
!> This is the library submodule containing the Git alias commands `git-aliases`
!> provides.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

submodule (libgaf18) aliases
implicit none
contains
    include 'aliases/backup.f08'
    include 'aliases/backupdestination.f08'
    include 'aliases/bone.f08'
    include 'aliases/bugfix.f08'
    include 'aliases/checkin.f08'
    include 'aliases/complain.f08'
    include 'aliases/create.f08'
    include 'aliases/delbranch.f08'
    include 'aliases/ff.f08'
    include 'aliases/goto_git.f08'
    include 'aliases/grab.f08'
    include 'aliases/graph.f08'
    include 'aliases/newbranch.f08'
    include 'aliases/noff.f08'
    include 'aliases/preview.f08'
    include 'aliases/rewind_git.f08'
    include 'aliases/savetags.f08'
    include 'aliases/store.f08'
    include 'aliases/subinit.f08'
    include 'aliases/tidy.f08'
    include 'aliases/tws.f08'
    include 'aliases/unconfigure.f08'
    include 'aliases/verbose.f08'
    include 'aliases/view.f08'
    include 'aliases/whereami.f08'
    include 'aliases/whichremotes.f08'
    include 'aliases/withdraw.f08'
end submodule aliases

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
