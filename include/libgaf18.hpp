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
 * \file        libgaf18.hpp
 * \note        See `LICENSE' for full license.
 *              See `README.md' for project details.
 *
 * \brief   The C++ interface for `git-aliases`.
 *
 * This file declares all symbols exported by `libgaf18.a` for usage in C++
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
#ifndef __LIBGAF18_HPP__
#define __LIBGAF18_HPP__



/*
 * Function declarations.
 */

extern "C" void configure   (void);
extern "C" void header      (void);

extern "C" void backup            (void);
extern "C" void backupdestination (void);
extern "C" void bone              (void);
extern "C" void bugfix            (void);
extern "C" void checkin           (void);
extern "C" void complain          (void);
extern "C" void create            (void);
extern "C" void delbranch         (void);
extern "C" void ff                (void);
extern "C" void goto_git          (void);
extern "C" void grab              (void);
extern "C" void graph             (void);
extern "C" void newbranch         (void);
extern "C" void noff              (void);
extern "C" void preview           (void);
extern "C" void rewind_git        (void);
extern "C" void savetags          (void);
extern "C" void store             (void);
extern "C" void subinit           (void);
extern "C" void tidy              (void);
extern "C" void tws               (void);
extern "C" void unconfigure       (void);
extern "C" void verbose           (void);
extern "C" void view              (void);
extern "C" void whereami          (void);
extern "C" void whichremotes      (void);
extern "C" void withdraw          (void);



/*
 * End of header.
 */

// Tidying up.
#ifndef __LIBGAF18_INTERNAL__
#endif  // ! __LIBGAF18_INTERNAL__

// Leaving the header.
#endif  // ! __LIBGAF18_HPP__

/******************************************************************************/
