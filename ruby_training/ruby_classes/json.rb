require 'json'

hash = JSON.parse('{"hello": "goodbye"}')
p hash["hello"]

hash = {"name" => "ahsan"}
p JSON.generate(hash)
p hash.to_json
