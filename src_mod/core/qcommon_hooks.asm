;===========================================================================
;    Copyright (C) 2010-2013  Ninja and TheKelm

;    This file is part of CoD4X18-Server source code.

;    CoD4X18-Server source code is free software: you can redistribute it and/or modify
;    it under the terms of the GNU Affero General Public License as
;    published by the Free Software Foundation, either version 3 of the
;    License, or (at your option) any later version.

;    CoD4X18-Server source code is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU Affero General Public License for more details.

;    You should have received a copy of the GNU Affero General Public License
;    along with this program.  If not, see <http://www.gnu.org/licenses/>
;===========================================================================


%macro bin_import 2

	SECTION .text		
		global %1
		%1: jmp dword [o%1]
		
	SECTION .rodata	
		o%1 dd %2
%endmacro

bin_import FindStringOfSize, 0x8150A74