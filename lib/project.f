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
!> \file project.f
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
!> \brief   The project logic of `git-aliases`.
!>
!> This is the library module containing the project logic of `git-aliases`.
!>
!> The library consists of the actual alias definitions as well as the utilities
!> in order to configure them.  Both categories are separated into dedicated
!> submodules, `aliases` and `logic`, respectively.  This separation simplifies
!> the maintenance of the project.
!>
!> This module is used in order to provide a common interface to both
!> submodules.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      module libgaf18
      implicit none

      public :: backup
      public :: backupdestination
      public :: bone
      public :: bugfix
      public :: checkin
      public :: complain
      public :: create
      public :: delbranch
      public :: ff
      public :: git
      public :: goto_git
      public :: grab
      public :: graph
      public :: newbranch
      public :: noff
      public :: overview
      public :: preview
      public :: rewind_git
      public :: savetags
      public :: self_information
      public :: store
      public :: subinit
      public :: table_header
      public :: tidy
      public :: tws
      public :: unconfigure
      public :: verbose
      public :: view
      public :: whereami
      public :: whichremotes
      public :: withdraw

      interface
      module subroutine backup
      implicit none
      end subroutine backup
      end interface

      interface
      module subroutine backupdestination
      implicit none
      end subroutine backupdestination
      end interface

      interface
      module subroutine bone
      implicit none
      end subroutine bone
      end interface

      interface
      module subroutine bugfix
      implicit none
      end subroutine bugfix
      end interface

      interface
      module subroutine checkin
      implicit none
      end subroutine checkin
      end interface

      interface
      module subroutine complain
      implicit none
      end subroutine complain
      end interface

      interface
      module subroutine create
      implicit none
      end subroutine create
      end interface

      interface
      module subroutine delbranch
      implicit none
      end subroutine delbranch
      end interface

      interface
      module subroutine ff
      implicit none
      end subroutine ff
      end interface

      interface
      module subroutine git (alias, definition, comment)
      implicit none
      character (*), intent (in) :: alias
      character (*), intent (in) :: definition
      character (*), intent (in) :: comment
      end subroutine git
      end interface

      interface
      module subroutine goto_git
      implicit none
      end subroutine goto_git
      end interface

      interface
      module subroutine grab
      implicit none
      end subroutine grab
      end interface

      interface
      module subroutine graph
      implicit none
      end subroutine graph
      end interface

      interface
      module subroutine newbranch
      implicit none
      end subroutine newbranch
      end interface

      interface
      module subroutine noff
      implicit none
      end subroutine noff
      end interface

      interface
      module subroutine overview (alias, comment)
      implicit none
      character (*), intent (in) :: alias
      character (*), intent (in) :: comment
      end subroutine overview
      end interface

      interface
      module subroutine preview
      implicit none
      end subroutine preview
      end interface

      interface
      module subroutine rewind_git
      implicit none
      end subroutine rewind_git
      end interface

      interface
      module subroutine savetags
      implicit none
      end subroutine savetags
      end interface

      interface
      module subroutine self_information
      implicit none
      end subroutine self_information
      end interface

      interface
      module subroutine store
      implicit none
      end subroutine store
      end interface

      interface
      module subroutine subinit
      implicit none
      end subroutine subinit
      end interface

      interface
      module subroutine table_header
      implicit none
      end subroutine table_header
      end interface

      interface
      module subroutine tidy
      implicit none
      end subroutine tidy
      end interface

      interface
      module subroutine tws
      implicit none
      end subroutine tws
      end interface

      interface
      module subroutine unconfigure
      implicit none
      end subroutine unconfigure
      end interface

      interface
      module subroutine verbose
      implicit none
      end subroutine verbose
      end interface

      interface
      module subroutine view
      implicit none
      end subroutine view
      end interface

      interface
      module subroutine whereami
      implicit none
      end subroutine whereami
      end interface

      interface
      module subroutine whichremotes
      implicit none
      end subroutine whichremotes
      end interface

      interface
      module subroutine withdraw
      implicit none
      end subroutine withdraw
      end interface

      end module libgaf18

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
