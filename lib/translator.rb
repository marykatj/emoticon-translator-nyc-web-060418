require 'yaml'
# require modules here

def load_library('emoticons.yml')
  translator = YAML.load_file
  translator
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
