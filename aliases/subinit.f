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
!> \author      Kevin Matthes
!> \brief       Set up the current submodule.
!> \copyright   GPL-2.0
!> \date        2022
!> \file        subinit.f
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> This alias is used in order to initialise the current submodule.
!>
!> When cloning from a remote repository with submodules non-recursively, these
!> are not going to be initialised during the cloning process.  Hence, users
!> need to initialise those themselves.  If one does not initialise submodules
!> frequently, the commands therefore can be easily forgotten.  This Git alias
!> summarises the required commands in order to provide a useful abbreviation.
!>
!> This alias command requires the specification of the branch to checkout.
!>
!> \note It is assumed that the current working directory is the root of the
!> submodule to initialise.  Hence, one needs to `cd` into the submodule to
!> initialise, at first.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \brief   Set up the current submodule.
!>
!> This alias is used in order to initialise the current submodule.
!>
!> When cloning from a remote repository with submodules non-recursively, these
!> are not going to be initialised during the cloning process.  Hence, users
!> need to initialise those themselves.  If one does not initialise submodules
!> frequently, the commands therefore can be easily forgotten.  This Git alias
!> summarises the required commands in order to provide a useful abbreviation.
!>
!> This alias command requires the specification of the branch to checkout.
!>
!> \note It is assumed that the current working directory is the root of the
!> submodule to initialise.  Hence, one needs to `cd` into the submodule to
!> initialise, at first.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      subroutine subinit
      use libgaf18, only: git
      implicit none

      call git
     &( 'subinit'
     &, '!git submodule init && git submodule update && git goto'
     &, 'Set up the current submodule.'
     &)

      end subroutine subinit

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
