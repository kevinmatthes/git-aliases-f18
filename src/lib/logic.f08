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
!> \file lib.f08
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
private
    private :: git
    private :: overview
    private :: self_information
    private :: table_header
    public  :: configure
    public  :: header

    interface
        impure module subroutine configure () bind (c)
        implicit none
        end subroutine configure
    end interface

    interface
        impure module subroutine git (alias, definition, comment)
        implicit none
            character (*), intent (in) :: alias
            character (*), intent (in) :: comment
            character (*), intent (in) :: definition
        end subroutine git
    end interface

    interface
        impure module subroutine header () bind (c)
        implicit none
        end subroutine header
    end interface

    interface
        impure module subroutine overview (alias, comment)
        implicit none
            character (*), intent (in) :: alias
            character (*), intent (in) :: comment
        end subroutine overview
    end interface

    interface
        impure module subroutine self_information
        implicit none
        end subroutine self_information
    end interface

    interface
        impure module subroutine table_header
        implicit none
        end subroutine table_header
    end interface

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    public  :: backup
    public  :: backupdestination
    public  :: bone
    public  :: bugfix
    public  :: checkin
    public  :: complain
    public  :: create
    public  :: delbranch
    public  :: ff
    public  :: goto_git
    public  :: grab
    public  :: graph
    public  :: newbranch
    public  :: noff
    public  :: preview
    public  :: rewind_git
    public  :: savetags
    public  :: store
    public  :: subinit
    public  :: tidy
    public  :: tws
    public  :: unconfigure
    public  :: verbose
    public  :: view
    public  :: whereami
    public  :: whichremotes
    public  :: withdraw

    interface
        impure module subroutine backup () bind (c)
        implicit none
        end subroutine backup
    end interface

    interface
        impure module subroutine backupdestination () bind (c)
        implicit none
        end subroutine backupdestination
    end interface

    interface
        impure module subroutine bone () bind (c)
        implicit none
        end subroutine bone
    end interface

    interface
        impure module subroutine bugfix () bind (c)
        implicit none
        end subroutine bugfix
    end interface

    interface
        impure module subroutine checkin () bind (c)
        implicit none
        end subroutine checkin
    end interface

    interface
        impure module subroutine complain () bind (c)
        implicit none
        end subroutine complain
    end interface

    interface
        impure module subroutine create () bind (c)
        implicit none
        end subroutine create
    end interface

    interface
        impure module subroutine delbranch () bind (c)
        implicit none
        end subroutine delbranch
    end interface

    interface
        impure module subroutine ff () bind (c)
        implicit none
        end subroutine ff
    end interface

    interface
        impure module subroutine goto_git () bind (c)
        implicit none
        end subroutine goto_git
    end interface

    interface
        impure module subroutine grab () bind (c)
        implicit none
        end subroutine grab
    end interface

    interface
        impure module subroutine graph () bind (c)
        implicit none
        end subroutine graph
    end interface

    interface
        impure module subroutine newbranch () bind (c)
        implicit none
        end subroutine newbranch
    end interface

    interface
        impure module subroutine noff () bind (c)
        implicit none
        end subroutine noff
    end interface

    interface
        impure module subroutine preview () bind (c)
        implicit none
        end subroutine preview
    end interface

    interface
        impure module subroutine rewind_git () bind (c)
        implicit none
        end subroutine rewind_git
    end interface

    interface
        impure module subroutine savetags () bind (c)
        implicit none
        end subroutine savetags
    end interface

    interface
        impure module subroutine store () bind (c)
        implicit none
        end subroutine store
    end interface

    interface
        impure module subroutine subinit () bind (c)
        implicit none
        end subroutine subinit
    end interface

    interface
        impure module subroutine tidy () bind (c)
        implicit none
        end subroutine tidy
    end interface

    interface
        impure module subroutine tws () bind (c)
        implicit none
        end subroutine tws
    end interface

    interface
        impure module subroutine unconfigure () bind (c)
        implicit none
        end subroutine unconfigure
    end interface

    interface
        impure module subroutine verbose () bind (c)
        implicit none
        end subroutine verbose
    end interface

    interface
        impure module subroutine view () bind (c)
        implicit none
        end subroutine view
    end interface

    interface
        impure module subroutine whereami () bind (c)
        implicit none
        end subroutine whereami
    end interface

    interface
        impure module subroutine whichremotes () bind (c)
        implicit none
        end subroutine whichremotes
    end interface

    interface
        impure module subroutine withdraw () bind (c)
        implicit none
        end subroutine withdraw
    end interface
end module libgaf18

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
