defmodule Euler1 do
  IO.puts "Starting problem 1"

  defp sumOfMultiples(m1, m2, current, max)  
  when current >= max do 0 end
  defp sumOfMultiples(m1, m2, current, max) do 
    if rem(current, m1) != 0 && rem(current,m2) != 0 do 
      sumOfMultiples(m1, m2, current + 1, max) 
    else
      current + sumOfMultiples(m1, m2, current+1, max) 
    end
  end

  def sumOfMultiples(m1, m2, max) do
    sumOfMultiples(m1, m2, 1, max)
  end

  def sumOfMultiples_Range(m1, m2, max) do
    Enum.reduce(Enum.filter(1..max-1, fn x -> rem(x, m1) == 0 || rem(x, m2) == 0 end), 0, fn(x, y) -> x+y end)
  end
end
