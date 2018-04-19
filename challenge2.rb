require "./challenge_methods"

ARGF.each do |text|
  puts regexiflow(text)
end
