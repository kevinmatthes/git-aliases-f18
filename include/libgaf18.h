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
 * \author      Kevin Matthes
 * \copyright   GPL-3.0
 * \date        2022
 * \file        libgaf18.h
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 *
 * \brief   The C interface for `git-aliases`.
 *
 * This file declares all symbols exported by `libgaf18.a` for usage in C
 * applications.
 */

/******************************************************************************/

/**
 * \author      Kevin Matthes
 * \copyright   GPL-3.0
 * \date        2022
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 *
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

extern void backup            (void);
extern void backupdestination (void);
extern void bone              (void);
extern void bugfix            (void);
extern void checkin           (void);
extern void complain          (void);
extern void create            (void);
extern void delbranch         (void);
extern void ff                (void);
extern void goto_git          (void);
extern void grab              (void);
extern void graph             (void);
extern void newbranch         (void);
extern void noff              (void);
extern void preview           (void);
extern void rewind_git        (void);
extern void savetags          (void);
extern void store             (void);
extern void subinit           (void);
extern void tidy              (void);
extern void tws               (void);
extern void unconfigure       (void);
extern void verbose           (void);
extern void view              (void);
extern void whereami          (void);
extern void whichremotes      (void);
extern void withdraw          (void);



/*
 * End of header.
 */

// Tidying up.
#ifndef __LIBGAF18_INTERNAL__
#endif  // ! __LIBGAF18_INTERNAL__

// Leaving the header.
#endif  // ! __LIBGAF18_H__

/******************************************************************************/
