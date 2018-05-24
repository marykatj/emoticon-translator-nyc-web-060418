require 'yaml'
# require modules here

def load_library(path)
  translator = YAML.load_file(path)
  translator_hash = Hash.new

  translator_hash["emoticon"] = Hash.new
  translator_hash["meaning"] = Hash.new

  translator.each do |english, emoticon_group|
   translator_hash["emoticon"][emoticon_group.first] = emoticon_group.last
   translator_hash["meaning"][emoticon_group.last] = english
 end
 emoticon_hash
end

def get_japanese_emoticon(english_emoticon, translator)
  translated_item = ""
  translator.each do |meaning|
    meaning.each do |english, japanese|
      if english_emoticon == english
        translated_item = japanese
      end
    end
  end
  translated_item
end

def get_english_meaning
  # code goes here
end
