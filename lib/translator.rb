require 'yaml'
# require modules here

def load_library(path)
  translator = YAML.load_file(path)
  translator_hash = Hash.new

  translator_hash["get_emoticon"] = Hash.new
  translator_hash["get_meaning"] = Hash.new

  translator.each do |english, emoticon_group|
  translator_hash["get_emoticon"][emoticon_group.first] = emoticon_group.last
  translator_hash["get_meaning"][emoticon_group.last] = english
 end
 emoticon_hash
end

def get_japanese_emoticon(path, english_emoticon)
  emoticon_hash = load_library(path)
  translated_item = emoticon_hash["get_emoticon"][emoticon]
  if translated_item == nil
    translated_item = "Sorry, that emoticon was not found"
  end
  translated_item
end

def get_english_meaning
  # code goes here
end
