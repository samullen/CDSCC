require "./challenge_methods"

puts chanchanchange(ARGV[0].to_f).map {|k,v| "#{v} #{k}"}.join(", ")
