defmodule PKWithElixir do
  def perform(i) do
    a = i + 1
    b = 2.3
    s = "helloworldhappynice Good Man"
  
    {a, b} =
      if a > b do
        {a + 1, b}
      else
        {a, b + 1}
      end
  
    b =
      if a == b do
        b + 1
      else
        b
      end

    c = a * b + a / b - :math.pow(a, 2)

    String.slice(s, 0, :binary.match(s, "happy") |> elem(0)) <> Float.to_string(c)
  end
end

t1 = DateTime.utc_now |> DateTime.to_unix(:microsecond)

Enum.each(1..100000, fn i ->
  PKWithElixir.perform(i)
end)

t2 = DateTime.utc_now |> DateTime.to_unix(:microsecond)

IO.puts("elixir time：#{(t2 - t1) / 1000}ms")
