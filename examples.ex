# anonymous function 1
Enum.filter([1,2,3,4], fn n -> rem(n, 2) == 0 end)
Enum.filter([1,2,3,4], fn n -> rem(n, 2) == 1 end)

# anonymous function 2
Enum.filter([1,2,3,4], &(rem(&1, 2) == 0))
Enum.filter([1,2,3,4], &(rem(&1, 2) == 1))

# existing functions from Integer module
Enum.filter([1,2,3,4], &Integer.is_even/1)
Enum.filter([1,2,3,4], &Integer.is_odd/1)

a = 0
#declare
increment = fn ->
  a = a + 1
end
increment.() # 1
a # 0

Enum.map(
  String.split(
    String.downcase(
      "ELIXIR-ELM"),
    "-"),
  &String.capitalize/1)
# ["Elixir", "Elm"]

"ELIXIR-ELM"
|> String.downcase()
|> String.split("-")
|> Enum.map(&String.capitalize/1)
# ["Elixir", "Elm"]

# declare outer function
apply = fn a, b, fun -> fun.(a, b) end

# declare function to be passed as parameter
add = fn a, b -> a + b end

# calls the outer function
apply.(1, 2, add) # 3

# call function with other parameters
apply.("first_name", "last_name", &<>/2) # "first_namelast_name"

