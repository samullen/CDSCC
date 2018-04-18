def toggle(switch_count, pairs)
  switches = Array.new(switch_count, 0)

  pairs.each do |pair|
    pair.min.upto(pair.max) { |i| switches[i] ^= 1 }
  end

  switches
end

p ENV["RUBY_ENV"]
if ENV["RUBY_ENV"] != "test"
  switch_count = ARGF.gets.to_i
  pairs = []
  ARGF.each do |pair|
    pairs << pair.split.map(&:to_i)
  end

  switches = toggle(switch_count, pairs)

  puts switches.inject(:+)
end
