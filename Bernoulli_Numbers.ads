-------------------------------------------------------------------------------
--                                                                           --
--                            Bernoulli Numbers                              --
--                                                                           --
--                          Bernoulli_Numbers.ads                            --
--                                                                           --
--                                  SPEC                                     --
--                                                                           --
--                   Copyright (C) 1996 Ulrik Hørlyk Hjort                   --
--                                                                           --
--  Bernoulli Numbers is free software;  you can  redistribute it            --
--  and/or modify it under terms of the  GNU General Public License          --
--  as published  by the Free Software  Foundation;  either version 2,       --
--  or (at your option) any later version.                                   --
--  Bernoulli Numbers is distributed in the hope that it will be             --
--  useful, but WITHOUT ANY WARRANTY;  without even the  implied warranty    --
--  of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  --
--  See the GNU General Public License for  more details.                    --
--  You should have  received  a copy of the GNU General                     --
--  Public License  distributed with Yolk.  If not, write  to  the  Free     --
--  Software Foundation,  51  Franklin  Street,  Fifth  Floor, Boston,       --
--  MA 02110 - 1301, USA.                                                    --
--                                                                           --
-------------------------------------------------------------------------------

package Bernoulli_Numbers is

   --------------------------------------------------------------------------------------
   -- Calculation of Bernoulli numbers by Srinivasa Ramanujan method.
   --
   --           | (m+1)    |
   -- SUM       | (   ) Bi | = 0
   -- i=0, m    | ( i )    |
   --
   --------------------------------------------------------------------------------------
   function Srinivasa_Ramanujan_Method(M : Long_Long_Integer) return Long_Long_Float;
end Bernoulli_Numbers;
