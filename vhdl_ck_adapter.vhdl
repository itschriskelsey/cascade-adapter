-- Caskade Programming Language Adapter for VHDL
-- Created on May 18, 2025
-- By Chris Kelsey of Blue Vision Studios

library ieee;
use ieee.std_logic_1164.all;

package caskade_adapter is

  -- Define Caskade Boolean type as std_logic ('1' = true, '0' = false)
  subtype caskade_bool is std_logic;
  
  constant true  : caskade_bool := '1';
  constant false : caskade_bool := '0';

  -- Caskade NOT operation
  function CASKADE_NOT(x : caskade_bool) return caskade_bool;

  -- Caskade AND operation
  function CASKADE_AND(a, b : caskade_bool) return caskade_bool;

  -- Caskade OR operation
  function CASKADE_OR(a, b : caskade_bool) return caskade_bool;

  -- Caskade Equality check
  function CASKADE_EQ(a, b : caskade_bool) return caskade_bool;

  -- Caskade Inequality check
  function CASKADE_NEQ(a, b : caskade_bool) return caskade_bool;

  -- Convert std_logic or integer to caskade_bool
  function CASKADE_TO_BOOL(x : std_logic) return caskade_bool;
  function CASKADE_TO_BOOL_INT(x : integer) return caskade_bool;

  -- Aliases for ease of use
  function NOT(x : caskade_bool) return caskade_bool;
  function AND(a, b : caskade_bool) return caskade_bool;
  function OR(a, b : caskade_bool) return caskade_bool;
  function EQ(a, b : caskade_bool) return caskade_bool;
  function NEQ(a, b : caskade_bool) return caskade_bool;

end package;

package body caskade_adapter is

  function CASKADE_NOT(x : caskade_bool) return caskade_bool is
  begin
    if x = true then
      return false;
    else
      return true;
    end if;
  end function;

  function CASKADE_AND(a, b : caskade_bool) return caskade_bool is
  begin
    if a = true and b = true then
      return true;
    else
      return false;
    end if;
  end function;

  function CASKADE_OR(a, b : caskade_bool) return caskade_bool is
  begin
    if a = true or b = true then
      return true;
    else
      return false;
    end if;
  end function;

  function CASKADE_EQ(a, b : caskade_bool) return caskade_bool is
  begin
    if a = b then
      return true;
    else
      return false;
    end if;
  end function;

  function CASKADE_NEQ(a, b : caskade_bool) return caskade_bool is
  begin
    if a /= b then
      return true;
    else
      return false;
    end if;
  end function;

  function CASKADE_TO_BOOL(x : std_logic) return caskade_bool is
  begin
    if x = '1' then
      return true;
    else
      return false;
    end if;
  end function;

  function CASKADE_TO_BOOL_INT(x : integer) return caskade_bool is
  begin
    if x /= 0 then
      return true;
    else
      return false;
    end if;
  end function;

  -- Aliases
  function NOT(x : caskade_bool) return caskade_bool is
  begin
    return CASKADE_NOT(x);
  end function;

  function AND(a, b : caskade_bool) return caskade_bool is
  begin
    return CASKADE_AND(a, b);
  end function;

  function OR(a, b : caskade_bool) return caskade_bool is
  begin
    return CASKADE_OR(a, b);
  end function;

  function EQ(a, b : caskade_bool) return caskade_bool is
  begin
    return CASKADE_EQ(a, b);
  end function;

  function NEQ(a, b : caskade_bool) return caskade_bool is
  begin
    return CASKADE_NEQ(a, b);
  end function;

end package body;
