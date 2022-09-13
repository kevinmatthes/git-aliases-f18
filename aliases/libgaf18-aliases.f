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
!> \file libgaf18-aliases.f
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
!> This is the library module containing the Git alias commands `git-aliases`
!> provides.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      module libgaf18_aliases
      implicit none

      public    :: backup
      public    :: backupdestination
      public    :: bone
      public    :: bugfix
      public    :: checkin
      public    :: complain
      public    :: create
      public    :: delbranch
      public    :: ff
      public    :: goto_git
      public    :: grab
      public    :: graph
      public    :: newbranch
      public    :: noff
      public    :: rewind_git
      public    :: savetags
      public    :: store
      public    :: subinit
      public    :: tidy
      public    :: tws
      public    :: unconfigure
      public    :: verbose
      public    :: view
      public    :: whereami
      public    :: whichremotes
      public    :: withdraw

      contains

      include 'backup.f'
      include 'backupdestination.f'
      include 'bone.f'
      include 'bugfix.f'
      include 'checkin.f'
      include 'complain.f'
      include 'create.f'
      include 'delbranch.f'
      include 'ff.f'
      include 'goto.f'
      include 'grab.f'
      include 'graph.f'
      include 'newbranch.f'
      include 'noff.f'
      include 'rewind.f'
      include 'savetags.f'
      include 'store.f'
      include 'subinit.f'
      include 'tidy.f'
      include 'tws.f'
      include 'unconfigure.f'
      include 'verbose.f'
      include 'view.f'
      include 'whereami.f'
      include 'whichremotes.f'
      include 'withdraw.f'

      end module libgaf18_aliases

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
