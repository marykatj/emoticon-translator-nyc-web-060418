require 'yaml'
# require modules here

def load_library
  translator = YAML.load_file('emoticons.yml')
  translator
end

def get_japanese_emoticon(english_emoticon, translator)
  new_hash = {}
  translator.each do |meaning|
    meaning.each do |english, japanese|
      if english_emoticon == english
        return japanese
      end
    end
  end
end

def get_english_meaning
  # code goes here
end
