jedi = [
  {name: "Luke", Lightsaber: "green", quote:"I am a jedi, like my father before me."},
  {name: "Obi Wan", Lightsaber: "blue", quote:"Well hello there."},
  {name: "Mace Windu", Lightsaber: "Purple", quote:"A SITH LORD!?"}
]

def get_quote(list, name)
  found = list.find_all { |item| item[:name] == name }
  return found.map { |item| item[:quote]  }
end

puts get_quote(jedi, "Luke")
