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
!> \file main.f
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
!> \brief   The Git alias configuration program.
!> \return  This program will return with exit code zero, by default.
!>
!> This program will invoke the configuration of the defined Git alias commands.
!>
!> Due to the naming convention of Git, this program can be integrated into it.
!> Git will treat any applications prefixed with `git-` as associated commands
!> \cite chacon.straub:git:2014.  Doing so with this program is a benefit since
!> one can not only configure all aliases with this tool but also request a
!> summary of the aliases set up by it.
!>
!> The resulting program does not require any command line arguments.  If there
!> should be some, however, they are going to be ignored.
!>
!> The application is going to exit with code zero.  Another behaviour is not
!> configured.  The exit code might vary, however, in case that the call to Git
!> should fail for some reasons.
!>
!> Recommended further readings are listed in the following.
!>
!> * \cite chacon.straub:git:2014
!> * \cite chivers.sleightholme:fortran:2018
!> * \cite kuhme.witschital:fortran:1991
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      program git_aliases
      use libgaf18, only: backup
      use libgaf18, only: backupdestination
      use libgaf18, only: bone
      use libgaf18, only: bugfix
      use libgaf18, only: checkin
      use libgaf18, only: complain
      use libgaf18, only: create
      use libgaf18, only: delbranch
      use libgaf18, only: ff
      use libgaf18, only: goto_git
      use libgaf18, only: grab
      use libgaf18, only: graph
      use libgaf18, only: newbranch
      use libgaf18, only: noff
      use libgaf18, only: preview
      use libgaf18, only: rewind_git
      use libgaf18, only: savetags
      use libgaf18, only: self_information
      use libgaf18, only: store
      use libgaf18, only: subinit
      use libgaf18, only: table_header
      use libgaf18, only: tidy
      use libgaf18, only: tws
      use libgaf18, only: unconfigure
      use libgaf18, only: verbose
      use libgaf18, only: view
      use libgaf18, only: whereami
      use libgaf18, only: whichremotes
      use libgaf18, only: withdraw
      implicit none

      call self_information
      call table_header

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

      end program git_aliases

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
