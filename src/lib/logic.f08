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

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
