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
!> \file configure.f08
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
!> \brief   The configuration of the Git alias commands.
!>
!> This utility subroutine controls which Git alias commands will be configured
!> when the main program is called.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

subroutine configure
    use, non_intrinsic :: libgaf18, only: backup
    use, non_intrinsic :: libgaf18, only: backupdestination
    use, non_intrinsic :: libgaf18, only: bone
    use, non_intrinsic :: libgaf18, only: bugfix
    use, non_intrinsic :: libgaf18, only: checkin
    use, non_intrinsic :: libgaf18, only: complain
    use, non_intrinsic :: libgaf18, only: create
    use, non_intrinsic :: libgaf18, only: delbranch
    use, non_intrinsic :: libgaf18, only: ff
    use, non_intrinsic :: libgaf18, only: goto_git
    use, non_intrinsic :: libgaf18, only: grab
    use, non_intrinsic :: libgaf18, only: graph
    use, non_intrinsic :: libgaf18, only: newbranch
    use, non_intrinsic :: libgaf18, only: noff
    use, non_intrinsic :: libgaf18, only: preview
    use, non_intrinsic :: libgaf18, only: rewind_git
    use, non_intrinsic :: libgaf18, only: savetags
    use, non_intrinsic :: libgaf18, only: store
    use, non_intrinsic :: libgaf18, only: subinit
    use, non_intrinsic :: libgaf18, only: tidy
    use, non_intrinsic :: libgaf18, only: tws
    use, non_intrinsic :: libgaf18, only: unconfigure
    use, non_intrinsic :: libgaf18, only: verbose
    use, non_intrinsic :: libgaf18, only: view
    use, non_intrinsic :: libgaf18, only: whereami
    use, non_intrinsic :: libgaf18, only: whichremotes
    use, non_intrinsic :: libgaf18, only: withdraw
implicit none
    call backup
    call backupdestination
    call bone
    call bugfix
    call checkin
    call complain
    call create
    call delbranch
    call ff
    call goto_git
    call grab
    call graph
    call newbranch
    call noff
    call preview
    call rewind_git
    call savetags
    call store
    call subinit
    call tidy
    call tws
    call unconfigure
    call verbose
    call view
    call whereami
    call whichremotes
    call withdraw
end subroutine configure

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
