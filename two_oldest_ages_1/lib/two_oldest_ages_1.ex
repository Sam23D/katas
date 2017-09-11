defmodule TwoOldestAges1 do

  def two_oldest_ages(ages) do
    _two_oldest_ages(ages, [0,0])
  end
  
  defp _two_oldest_ages([head | tail], [_, oldest] ) when head >= oldest  do
    _two_oldest_ages( tail, [ oldest, head ] )
  end
  
  defp _two_oldest_ages([head | tail], [scnd_oldest, oldest] ) when head >= scnd_oldest do
    _two_oldest_ages( tail, [ head, oldest ] )
  end
  
  defp _two_oldest_ages([ ], [scnd_oldest, oldest] )  do
    [ scnd_oldest, oldest ]
  end
  

end
