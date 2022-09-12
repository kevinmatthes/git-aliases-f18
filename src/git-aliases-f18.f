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
!> \brief       The main source file.
!> \copyright   (C) 2022 Kevin Matthes.
!>              This file is licensed GPL 2 as of June 1991.
!> \date        2022
!> \file        git-aliases-f18.f
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> This source file defines the invocation of the configuration of the defined
!> Git alias commands.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \brief   The Git alias configuration program.
!> \return  This program will return with exit code zero, by default.
!>
!> This program will invoke the configuration of the defined Git alias commands.
!>
!> Due to the naming convention of Git, this program can be integrated into it.
!> Git will treat any applications prefixed with `git-` as associated commands.
!> Doing so with this program is also a benefit for the user since one can not
!> only configure all aliases with this tool but also request a summary of the
!> aliases set up with this tool.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

      program git_aliases_f18
      use libgaf18_aliases, only: backup
      use libgaf18_aliases, only: backupdestination
      use libgaf18_aliases, only: bone
      use libgaf18_aliases, only: bugfix
      use libgaf18_aliases, only: checkin
      use libgaf18_aliases, only: create
      use libgaf18_aliases, only: delbranch
      use libgaf18_aliases, only: ff
      use libgaf18_aliases, only: goto_git
      use libgaf18_aliases, only: grab
      use libgaf18_aliases, only: graph
      use libgaf18_aliases, only: newbranch
      use libgaf18_aliases, only: noff
      use libgaf18_aliases, only: rewind_git
      use libgaf18_aliases, only: savetags
      use libgaf18_aliases, only: store
      use libgaf18_aliases, only: subinit
      use libgaf18_aliases, only: tidy
      use libgaf18_aliases, only: tws
      use libgaf18_aliases, only: unconfigure
      use libgaf18_aliases, only: verbose
      use libgaf18_aliases, only: view
      use libgaf18_aliases, only: whereami
      use libgaf18_aliases, only: whichremotes
      use libgaf18_aliases, only: withdraw
      implicit none

      print '(a / a / a / a / a //// a20, t24, a /)'
     &,     'git-aliases, version 0.1.0'
     &,     'Copyright (C) 2022 Kevin Matthes.'
     &,     'This is free software according to GPL-2.0.'
     &,     'THERE IS ABSOLUTELY NO WARRANTY, WITHOUT EVEN THE IMPLIED '
     &//    'WARRANTY OF'
     &,     'MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE.'
     &,     'ALIAS', 'DESCRIPTION'

      call backup
      call backupdestination
      call bone
      call bugfix
      call checkin
      call create
      call delbranch
      call ff
      call goto_git
      call grab
      call graph
      call newbranch
      call noff
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

      end program git_aliases_f18

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
