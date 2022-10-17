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
!> \file main.f08
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
!> Recommended further readings and references are listed in the following.
!>
!> * \cite chacon.straub:git:2014
!>   Scott Chacon, and Ben Straub.  *Pro Git.  Everything you need to know about
!>   Git.*  2nd Edition.  New York:  Apress, 2014.  ISBN:  978-1-4842-0077-3.
!>
!> * \cite chivers.sleightholme:fortran:2018
!>   Ian Chivers, and Jane Sleightholme.  *Introduction to Programming with
!>   Fortran.*  4th Edition.  Cham:  Springer, 2018.  ISBN:  978-3-030-09248-1.
!>
!> * \cite kuhme.witschital:fortran:1991
!>   Thomas Kühme, and Peter Witschital.  *Die FORTRAN-Fibel.*  3rd Edition.
!>   Munich:  Oldenbourg, 1991.  ISBN:  978-3-486-22016-2.
!>
!> * \cite metcalf.reid.cohen:fortran:2018
!>   Michael Metcalf, John Reid, and Malcolm Cohen.  *Modern Fortran Explained.
!>   Incorporating Fortran 2018.*  2nd Edition.  Oxford:  Oxford University
!>   Press, 2018.  ISBN:  978-0-19-881188-6.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program git_aliases
    use, non_intrinsic :: libgaf18, only: configure
    use, non_intrinsic :: libgaf18, only: header
implicit none
    call header
    call configure
end program git_aliases

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
