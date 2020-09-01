defmodule Bob do
  def hey(input) do
    cond do
      String.ends_with?(input, "!") -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
