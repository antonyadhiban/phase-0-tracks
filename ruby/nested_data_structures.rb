# Nested datastructure
nested_datastructure = {
    # value as a string
    ars:"Arsene Wenger",
    # value as an array
    mun:["Alex Ferguson","David Moyes","Van Gal","Jose Mourinho"],
    # value as a hash
    liv:{now:"Jurgen Klopp",before:"long list of managers"}
    }
# Nested access
p nested_datastructure[:ars]
p nested_datastructure[:mun][3]
p nested_datastructure[:liv][:before]

