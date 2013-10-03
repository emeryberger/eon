/*
 * file:        NandFlash.nc
 * description: NAND flash demo component - wiring
 *
 * author:      Peter Desnoyers, UMass Computer Science Dept.
 * $Id: NandFlash.nc,v 1.4 2005/09/16 17:49:59 pjd Exp $
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

configuration NandFlash {
}

implementation {
    components Main, PageNANDC, NandFlashM;
    components ConsoleC;

    Main.StdControl -> NandFlashM;
    Main.StdControl -> PageNANDC;
    NandFlashM.PageNAND -> PageNANDC;
    NandFlashM.Console -> ConsoleC;
}
