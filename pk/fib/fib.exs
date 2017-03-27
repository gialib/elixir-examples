defmodule Fib do
  #def fib(n):
  #  if n == 0: return 0
  #  elif n == 1: return 1
  #  else: return fib(n-1) + fib(n-2)

  def get(0), do: 0
  def get(1), do: 1
  def get(n) do
    get(n - 1) + get(n - 2)
  end
end

IO.puts Fib.get(40)

# elixir fib.exs  4.73s user 0.51s system 98% cpu 5.320 total
