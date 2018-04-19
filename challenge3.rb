require "./challenge_methods"

switch_count = ARGF.gets.to_i
pairs = []
ARGF.each do |pair|
  pairs << pair.split.map(&:to_i)
end

switches = toggle(switch_count, pairs)

puts switches.inject(:+)
