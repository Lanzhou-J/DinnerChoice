require "artii"
def artii(string)
  artii = Artii::Base.new
  puts artii.asciify(string)
end