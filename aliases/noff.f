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
!> \brief       Merge without the fast-forward strategy.
!> \copyright   (C) 2022 Kevin Matthes.
!>              This file is licensed GPL 2 as of June 1991.
!> \date        2022
!> \file        noff.f
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> This alias is used in order to not fast-forward a branch.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \brief   Merge without the fast-forward strategy.
!>
!> This alias is used in order to not fast-forward a branch.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      subroutine noff
      implicit none

      call git
     &( 'noff'
     &, 'merge --no-ff'
     &, 'Merge without the fast-forward strategy.'
     &)

      end subroutine noff

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
