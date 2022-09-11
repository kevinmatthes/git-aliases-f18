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
!> \brief       Explore the Git history in the terminal.
!> \copyright   (C) 2022 Kevin Matthes.
!>              This file is licensed GPL 2 as of June 1991.
!> \date        2022
!> \file        view.f
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> This alias is used in order to explore the Git history in the terminal.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \brief   Explore the Git history in the terminal.
!>
!> This alias is used in order to explore the Git history in the terminal.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      subroutine view
      use libgaf18, only: git
      implicit none

      call git
     &( 'view'
     &, 'log --graph --pretty=oneline --decorate --all'
     &, 'Explore the Git history in the terminal.'
     &)

      end subroutine view

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
