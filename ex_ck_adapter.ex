# Caskade Programming Language Adapter for Elixir
# Created on May 18, 2025
# By Chris Kelsey of Blue Vision Studios

defmodule CaskadeAdapter do
  @true 1
  @false 0

  def caskade_not(x) when x == @true, do: @false
  def caskade_not(_), do: @true

  def caskade_and(a, b) when a == @true and b == @true, do: @true
  def caskade_and(_, _), do: @false

  def caskade_or(a, b) when a == @true or b == @true, do: @true
  def caskade_or(_, _), do: @false

  def caskade_eq(a, b) when a == b, do: @true
  def caskade_eq(_, _), do: @false

  def caskade_neq(a, b) when a != b, do: @true
  def caskade_neq(_, _), do: @false

  def caskade_to_bool(x) when x == 0, do: @false
  def caskade_to_bool(_), do: @true
end
