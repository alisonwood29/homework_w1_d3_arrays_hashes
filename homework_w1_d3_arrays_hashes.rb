# Homework

# A. Given the following data structure:


stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]


# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")
# p stops
# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")
# p stops
# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, "Polmont")
# p stops
# 4. Work out the index position of `"Linlithgow"`
#p stops.index("Linlithgow")
# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")
# p stops
# 6. Delete `"Cumbernauld"` from the array by index
# stops.slice!(2)
stops.delete_at(2)
# p stops
# 7. How many stops there are in the array?
# p stops.length()
# p stops.count
# p stops.size
# 8. How many ways can we return `"Falkirk High"` from the array?
# p stops[2]
# p stops[-5]
# p stops.fetch(2)
# p stops.slice(2)
# p stops.at(2)
# 9. Reverse the positions of the stops in the array
# p stops.reverse()
# 10. Print out all the stops using a for loop
# for stop_name in stops
#   p stop_name
# end


## B. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# p users["Jonathan"][:twitter]
# # 2. Get Erik's hometown
# p users["Erik"][:home_town]
# # 3. Get the array of Erik's favourite numbers
# p users["Erik"][:favourite_numbers]
# # 4. Get the type of Avril's pet Colin
# p users["Avril"][:pets]["colin"]
# 5. Get the smallest of Erik's favourite numbers
# p users["Erik"][:favourite_numbers].min()
# # 6. Add the number `7` to Erik's favourite numbers
users["Erik"][:favourite_numbers].push(7)
# p users["Erik"]
# # 7. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
# p users["Erik"]
# 8. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["fluffy"] = :dog
# p users["Erik"]
# 9. Add yourself to the users hash
users["Alison"] = {
        :twitter => "alisonwood29",
        :favourite_numbers => [2, 29, 42],
        :home_town => "Edinburgh",
        :pets => {
          "skye" => :dog,
          "sparkles" => :fish
        }
}
# p users

# C. Given the following data structure:


united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]


# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital] = "Cardiff"
# p united_kingdom
# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
northern_ireland = {
      name: "Northern Ireland",
      population: 1811000,
      capital: "Belfast"
  }
  united_kingdom.push(northern_ireland)
  # p united_kingdom
# 3. Use a loop to print the names of all the countries in the UK.
for country_name in united_kingdom
  p country_name[:name]
end
# 4. Use a loop to find the total population of the UK.
population = 0
for country in united_kingdom
  population += country[:population]
end
p population
