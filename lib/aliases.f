!!!!!!!!!!!!!!!!!!!!!!!! GNU General Public License 2.0 !!!!!!!!!!!!!!!!!!!!!!!!
!!                                                                            !!
!! Copyright (C) 2022 Kevin Matthes                                           !!
!!                                                                            !!
!! This program is free software; you can redistribute it and/or modify       !!
!! it under the terms of the GNU General Public License as published by       !!
!! the Free Software Foundation; either version 2 of the License, or          !!
!! (at your option) any later version.                                        !!
!!                                                                            !!
!! This program is distributed in the hope that it will be useful,            !!
!! but WITHOUT ANY WARRANTY; without even the implied warranty of             !!
!! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              !!
!! GNU General Public License for more details.                               !!
!!                                                                            !!
!! You should have received a copy of the GNU General Public License along    !!
!! with this program; if not, write to the Free Software Foundation, Inc.,    !!
!! 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                !!
!!                                                                            !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \file aliases.f
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \author      Kevin Matthes
!> \copyright   GPL-2.0
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

      include '../aliases/backup.f'
      include '../aliases/backupdestination.f'
      include '../aliases/bone.f'
      include '../aliases/bugfix.f'
      include '../aliases/checkin.f'
      include '../aliases/complain.f'
      include '../aliases/create.f'
      include '../aliases/delbranch.f'
      include '../aliases/ff.f'
      include '../aliases/goto.f'
      include '../aliases/grab.f'
      include '../aliases/graph.f'
      include '../aliases/newbranch.f'
      include '../aliases/noff.f'
      include '../aliases/rewind.f'
      include '../aliases/savetags.f'
      include '../aliases/store.f'
      include '../aliases/subinit.f'
      include '../aliases/tidy.f'
      include '../aliases/tws.f'
      include '../aliases/unconfigure.f'
      include '../aliases/verbose.f'
      include '../aliases/view.f'
      include '../aliases/whereami.f'
      include '../aliases/whichremotes.f'
      include '../aliases/withdraw.f'

      end submodule aliases

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
