-------------------------------------------------------------------------------
--                                                                           --
--                             Bernoulli Numbers                             --
--                                                                           --
--                           Bernoulli_Numbers.adb                           --
--                                                                           --
--                                  BODY                                     --
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
with Number_Theory_Tools; use Number_Theory_Tools;

package body Bernoulli_Numbers is

   --------------------------------------------------------------------------------------
   --
   --------------------------------------------------------------------------------------
   function A_func(M : Long_Long_Integer; Limit : Long_Long_Integer) return Long_Long_Float is
      Sum : Long_Long_Float := 0.0;

   begin
      for I in 1 .. Limit loop
         Sum := Sum + (Binomial_Coefficient(M+3,M-6 * I) * Srinivasa_Ramanujan_Method (M-6*I));
      end loop;
       return Sum;
   end A_func;


   --------------------------------------------------------------------------------------
   -- Calculation of Bernoulli numbers by Srinivasa Ramanujan method.
   --
   --           | (m+1)    |
   -- SUM       | (   ) Bi | = 0
   -- i=0, m    | ( i )    |
   --
   --------------------------------------------------------------------------------------
   function Srinivasa_Ramanujan_Method(M : Long_Long_Integer) return Long_Long_Float is
      Ret_Val : Long_Long_Float          := 0.0;
      M_Float : constant Long_Long_Float := Long_Long_Float(M);

   begin
      if  M = 0 then
         Ret_Val := 1.0;
      elsif M = 1 then
         Ret_Val := -0.5;
      elsif M mod 2 = 1 then
         Ret_Val := 0.0;
      elsif M mod 6 = 0 then
         Ret_Val := (((M_Float + 3.0) / 3.0) - A_func(M, Long_Long_Integer(M_Float/6.0)))
                    / Binomial_Coefficient(M+3,M);

      elsif M mod 6 = 2 then
         Ret_Val := (((M_Float + 3.0) / 3.0) - A_func(M, Long_Long_Integer((M_Float - 2.0)/6.0)))
                    / Binomial_Coefficient(M+3,M);

      elsif M mod 6 = 4 then
         Ret_Val := ((-1.0 * ((M_Float + 3.0) / 6.0)) - A_func(M, Long_Long_Integer((M_Float - 4.0)/6.0)))
                    / Binomial_Coefficient(M+3,M);
      end if;

      return Ret_Val;
   end Srinivasa_Ramanujan_Method;

end Bernoulli_Numbers;
