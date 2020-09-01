defmodule Bob do
  def hey(input) do
    cond do
      input == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") and String.upcase(input) == input -> "Calm down, I know what I'm doing!"
      String.ends_with?(input, "?") -> "Sure."
      String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
