!!!!!!!!!!!!!!!!!!!!!!!! GNU General Public License 3.0 !!!!!!!!!!!!!!!!!!!!!!!!
!!                                                                            !!
!! Copyright (C) 2022 Kevin Matthes                                           !!
!!                                                                            !!
!! This program is free software: you can redistribute it and/or modify       !!
!! it under the terms of the GNU General Public License as published by       !!
!! the Free Software Foundation, either version 3 of the License, or          !!
!! (at your option) any later version.                                        !!
!!                                                                            !!
!! This program is distributed in the hope that it will be useful,            !!
!! but WITHOUT ANY WARRANTY; without even the implied warranty of             !!
!! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              !!
!! GNU General Public License for more details.                               !!
!!                                                                            !!
!! You should have received a copy of the GNU General Public License          !!
!! along with this program.  If not, see <https://www.gnu.org/licenses/>.     !!
!!                                                                            !!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \file subinit.f08
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!
!> \author      Kevin Matthes
!> \copyright   GPL-3.0
!> \date        2022
!> \note        See `LICENSE' for full license.
!>              See `README.md' for project details.
!>
!> \brief   Set up all configured submodules.
!>
!> This alias is used in order to initialise all submodules configured in
!> `.gitmodules`.
!>
!> When cloning from a remote repository with submodules non-recursively, they
!> are not going to be initialised during the cloning process.  Hence, users
!> need to initialise those themselves.  If one does not initialise submodules
!> frequently, the commands therefore can be forgotten easily.  This Git alias
!> summarises the required commands in order to provide a useful abbreviation.
!>
!> \note When invoked, Git will assume the repository root as the current
!> working directory.  It does not matter if the actual working directory
!> differs.  Hence, all submodules specified in `.gitmodules` will be fetched
!> and initialised at once.
!>
!> \warning Each submodule initialised by this Git alias command will have its
!> respective `HEAD` detached.
!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

impure subroutine subinit () bind (c)
implicit none
    call git ( 'subinit'                                                       &
             , '!git submodule init && git submodule update'                   &
             , 'Set up all configured submodules.'                             &
             )
end subroutine subinit

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
