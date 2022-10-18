/*********************** GNU General Public License 2.0 ***********************\
|                                                                              |
|  Copyright (C) 2022 Kevin Matthes                                            |
|                                                                              |
|  This program is free software; you can redistribute it and/or modify        |
|  it under the terms of the GNU General Public License as published by        |
|  the Free Software Foundation; either version 2 of the License, or           |
|  (at your option) any later version.                                         |
|                                                                              |
|  This program is distributed in the hope that it will be useful,             |
|  but WITHOUT ANY WARRANTY; without even the implied warranty of              |
|  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               |
|  GNU General Public License for more details.                                |
|                                                                              |
|  You should have received a copy of the GNU General Public License along     |
|  with this program; if not, write to the Free Software Foundation, Inc.,     |
|  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.                 |
|                                                                              |
\******************************************************************************/

/**
 * \author      Kevin Matthes
 * \brief       The C interface for `git-aliases`.
 * \copyright   GPL-2.0
 * \date        2022
 * \file        libgaf18.h
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 *
 * This file introduces all exported symbols `libgaf18.a`.
 */

/******************************************************************************/

/**
 * \brief   Prevent this header from being included twice.
 *
 * In case this header file should be included more than just once, unexpected
 * side effects might take place.  This unintended behaviour will be avoided by
 * the definition of this macro.
 */

#pragma once
#ifndef __LIBGAF18_H__
#define __LIBGAF18_H__



/*
 * Function declarations.
 */

extern void configure   (void);
extern void header      (void);



/*
 * End of header.
 */

// Tidying up.
#ifndef __LIBGAF18_INTERNAL__
#endif  // ! __LIBGAF18_INTERNAL__

// Leaving the header.
#endif  // ! __LIBGAF18_H__

/******************************************************************************/
