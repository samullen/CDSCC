def chanchanchange(change, payload = nil)
  payload ||= { quarters: 0, dimes: 0, nickles: 0, pennies: 0 }

  if change >= 0.25
    difference = 0.25
    payload[:quarters] += 1
  elsif change >= 0.10
    difference = 0.10
    payload[:dimes] += 1
  elsif change >= 0.05
    difference = 0.05
    payload[:nickles] += 1
  elsif change >= 0.01
    difference = 0.01
    payload[:pennies] += 1
  else
    return payload
  end

  return chanchanchange((change - difference).round(2), payload)
end

def regexiflow(text, maxwidth = 40)
  text.split(/(.{1,#{maxwidth}})(?:\s|\z)/).reject {|block| block == ""}
end

def toggle(switch_count, pairs)
  switches = Array.new(switch_count, 0)

  pairs.each do |pair|
    pair.min.upto(pair.max) { |i| switches[i] ^= 1 }
  end

  switches
end
