/*
 * file:        nand.h
 * description: pin assignments for NAND flash board.
 *              wired: /CE -- ADC6    CLE -- ADC0
 *                     ALE -- ADC1    /WE -- ADC2  /WP -- ADC3
 *                     /RE -- ADC5    RY/BY -- INT1
 *
 * author:      Peter Desnoyers, UMass Computer Science Dept.
 * $Id: nand.h,v 1.2 2005/10/13 04:56:25 pjd Exp $
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

TOSH_ASSIGN_PIN(NAND_CE, F, 6);
TOSH_ASSIGN_PIN(NAND_CLE, F, 0);
TOSH_ASSIGN_PIN(NAND_ALE, F, 1);

TOSH_ASSIGN_PIN(NAND_WE, D, 0);
/* we can't do this in nesc: #define NAND_WE_PORT PORTF */
/* #define NAND_WE_BIT 2 */

TOSH_ASSIGN_PIN(NAND_WP, F, 3);

TOSH_ASSIGN_PIN(NAND_RE, D, 1);
/* #define NAND_RE_PORT PORTF */
/* #define NAND_RE_BIT 5 */

TOSH_ASSIGN_PIN(NAND_RY, E, 5);

static inline void MAKE_PWBUS_OUTPUT() { outp(0xff, DDRC); }
static inline void MAKE_PWBUS_INPUT() { outp(0, DDRC); }
static inline uint8_t READ_PWBUS() { return inp(PINC); }
static inline void WRITE_PWBUS(uint8_t val) { outp(val, PORTC); }

enum {
    NAND_DATA_IN = 0x80,
    NAND_PROGRAM = 0x10,
    NAND_READ_1 = 0x00,
    NAND_READ_2 = 0x01,
    NAND_READ_3 = 0x50,
    NAND_RESET = 0xFF,
    NAND_ERASE = 0x60,
    NAND_ERASE_CONFIRM = 0xD0,
    NAND_STATUS = 0x70,
    NAND_ID_READ = 0x90
};

