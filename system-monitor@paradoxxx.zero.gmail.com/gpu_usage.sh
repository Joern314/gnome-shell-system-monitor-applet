#!/bin/bash
##################################################################################
#    This file is part of System Monitor Gnome extension.
#    Apt Update Indicator is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#    Apt Update Indicator is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    You should have received a copy of the GNU General Public License
#    along with System Monitor.  If not, see <http://www.gnu.org/licenses/>.
#    Copyright 2017 Fran Glais, David King, indigohedgehog@github.
##################################################################################

##################################
#                                #
#   Check for GPU memory usage   #
#                                #
##################################

# This will print two lines. The first one is the the total vRAM available,
# while the second one is the used vRAM.
totalVRAM="8129m"
usedVRAM=$(bash "/usr/joern/Linux/bash/myradeontop.sh" | awk '{print $28}' | sed 's/.$//')

# This line will print the GPU usage in %.
percGPU=$(bash "/usr/joern/Linux/bash/myradeontop.sh" | awk '{print $5}' | sed 's/.$//')

echo "$totalVRAM"
echo "$usedVRAM"
echo "$percGPU"
