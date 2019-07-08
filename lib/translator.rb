require "yaml"
#[{angel: ["O:)", "☜(⌒▽⌒)☞"]},{angry:[">:(","ヽ(ｏ`皿′ｏ)ﾉ"]}]

def load_library(file_path)
hash=YAML.load_file(file_path)
new_hash={'get_meaning' => {}, 'get_emoticon' => {}}
hash.each{|key, value| 
new_hash['get_meaning'][value[1]]=key
new_hash['get_emoticon'][value[0]]=value[1] }
  return new_hash
end

def get_japanese_emoticon(file_path, emoticon)
 hash=load_library(file_path)
 result=hash['get_emoticon'][emoticon]
 if result
   return result
 else
   return "Sorry, that emoticon was not found"
 end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
end