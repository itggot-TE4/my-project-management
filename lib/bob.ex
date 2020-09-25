defmodule Bob do
  def say(input) do
    cond do
      silence?(input) -> "Fine. Be that way!"
      question?(input) and shouting?(input) -> "Calm down, I know what I'm doing!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def silence?(input), do: String.trim(input) == ""
  def shouting?(input), do: input =~ ~r/\p{Lu}/u and String.upcase(input) == input
  def question?(input), do: input =~ ~r/\?\s*$/u
end
