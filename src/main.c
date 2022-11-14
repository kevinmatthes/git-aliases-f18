/*********************** GNU General Public License 3.0 ***********************\
|                                                                              |
|  Copyright (C) 2022 Kevin Matthes                                            |
|                                                                              |
|  This program is free software: you can redistribute it and/or modify        |
|  it under the terms of the GNU General Public License as published by        |
|  the Free Software Foundation, either version 3 of the License, or           |
|  (at your option) any later version.                                         |
|                                                                              |
|  This program is distributed in the hope that it will be useful,             |
|  but WITHOUT ANY WARRANTY; without even the implied warranty of              |
|  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               |
|  GNU General Public License for more details.                                |
|                                                                              |
|  You should have received a copy of the GNU General Public License           |
|  along with this program.  If not, see <https://www.gnu.org/licenses/>.      |
|                                                                              |
\******************************************************************************/

/**
 * \file main.c
 */

/******************************************************************************/

/**
 * \author      Kevin Matthes
 * \copyright   GPL-3.0
 * \date        2022
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 *
 * \brief   The Git alias configuration program.
 * \return  Exit code zero.
 *
 * This is the C99 edition of `git-aliases`.  Its behaviour is similar to that
 * of the Fortran 2018 edition.
 */

#include "../include/libgaf18.h"

int main (void)
{
    header ();
    configure ();
    return 0x0;
}

/******************************************************************************/
