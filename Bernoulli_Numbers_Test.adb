-------------------------------------------------------------------------------
--                                                                           --
--                           Bernoulli_Numbers_Test                          --
--                                                                           --
--                         Bernoulli_Numbers_Test.adb                        --
--                                                                           --
--                                  BODY                                     --
--                                                                           --
--                   Copyright (C) 1996 Ulrik Hørlyk Hjort                   --
--                                                                           --
--  Bernoulli Numbers Test is free software;  you can  redistribute it       --
--  and/or modify it under terms of the  GNU General Public License          --
--  as published  by the Free Software  Foundation;  either version 2,       --
--  or (at your option) any later version.                                   --
--  Bernoulli Numbers Test is distributed in the hope that it will be        --
--  useful, but WITHOUT ANY WARRANTY;  without even the  implied warranty    --
--  of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  --
--  See the GNU General Public License for  more details.                    --
--  You should have  received  a copy of the GNU General                     --
--  Public License  distributed with Yolk.  If not, write  to  the  Free     --
--  Software Foundation,  51  Franklin  Street,  Fifth  Floor, Boston,       --
--  MA 02110 - 1301, USA.                                                    --
--                                                                           --
-------------------------------------------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;
with Bernoulli_Numbers; use Bernoulli_Numbers;

procedure Bernoulli_Numbers_Test is

begin
   for I in 0 .. 17 loop
      Put_Line("Bn : " & Integer'Image(I) & "  " &
               Long_Long_Float'Image(Srinivasa_Ramanujan_Method(Long_Long_Integer(I))) & " ");
      end loop;
end Bernoulli_Numbers_Test;
