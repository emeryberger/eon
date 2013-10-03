/*
 * file:        Crc8C.nc
 * description: Crc implementation
 *
 * author:      Gaurav Mathur, UMass Computer Science Dept.
 * $Id: StackC.nc,v 1.0 2006/05/01 00:00:00 gmathur Exp $
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

/* 
 * 8 bit CRC
 */
module Crc8C {
    provides interface Crc8;
}
implementation 
{
    uint8_t CrcByte (uint8_t inCrc, uint8_t inData)
    {
        uint8_t i;
        uint8_t data;

        data = inCrc ^ inData;
  
	    for (i=0; i < 8; i++) 
        {
            if ((data & 0x80) != 0)
            {
                data <<= 1;
                data ^= 0x07;
            }
            else
                data <<= 1;
    	}

    	return data;
    }
    
    command uint8_t Crc8.crc8(uint8_t *ptr, uint16_t len, uint8_t crc_)
    {
        uint8_t crc;

        crc = crc_;

        while (len > 0)
        {
            crc = CrcByte (crc, *ptr++);
            len--;
        }

        return crc;
    }
}
