defmodule Problem2 do
  defp sumEvenFibonacci(prev2, prev1, max) 
    when prev2 + prev1 >= max do 0
  end

  defp sumEvenFibonacci(prev2, prev1, max) do
    if(rem(prev2 + prev1, 2) == 0) do
      prev2 + prev1 + sumEvenFibonacci(prev1, prev2 + prev1, max)
    else
      sumEvenFibonacci(prev1, prev2 + prev1, max)
    end
    
  end

  def sumEvenFibonacci(max) do
   sumEvenFibonacci(1, 1, max) 
  end
end
