require "pry"
require "yaml"

def load_library(file)
  emoticons_hash = YAML.load_file(file)
  ruby_hash = Hash.new
  
  emoticons_hash.each do |name, emojis|
    ruby_hash[name] = {:english => emojis[0], :japanese => emojis[1]}
  end
  ruby_hash
end

<<<<<<< HEAD
def get_japanese_emoticon(file, english_emoji)
  dictionary = load_library(file)
  translated = dictionary.find {|name, translations| translations[:english] == english_emoji}
  # translated is an array like ["sad", { :english => ":'(", :japanese => "(Ｔ▽Ｔ)" }]
  if translated
    translated[1][:japanese]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, japanese_emoji)
  dictionary = load_library(file)
  translated = dictionary.find {|name, translations| translations[:japanese] == japanese_emoji}
  if translated
    translated[0] if translated
  else
    "Sorry, that emoticon was not found"
  end
end

#pp get_english_meaning("./lib/emoticons.yml", "(＾ｖ＾)")
=======
def get_japanese_emoticon(file, j)
 h = load_library(file)
 translated = h.find {|name, t| t[:japanese] == j}
 puts translated.inspect
 translated[0] if translated
end

def get_english_meaning(file, eng)
  h = load_library(file)
 translated = h.find {|name, t| t[:english] == eng}
 puts translated.inspect
 translated[0] if translated
end
>>>>>>> a88f5230f27925ea56c21659f3eb31b738de5165
