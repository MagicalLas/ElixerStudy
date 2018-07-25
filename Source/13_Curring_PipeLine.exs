val = 1
f1 = fn(a)->a + 3 end
f2 = &(&1 * 2)
IO.puts ( val|> f1.() |>f2.() )
