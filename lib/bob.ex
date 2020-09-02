defmodule Bob do
  def hey(input) do
    cond do
      silence?(input) -> "Fine. Be that way!"
      question?(input) and shouting?(input) -> "Calm down, I know what I'm doing!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def silence?(input), do: String.trim(input) == ""
  def shouting?(input), do: !String.match?(input, ~r/^(\d|\W)+$/) and String.upcase(input) == input
  def question?(input), do: String.ends_with?(String.trim(input), "?")
end
