def chanchanchange(change, payload = nil)
  payload ||= { quarters: 0, dimes: 0, nickles: 0, pennies: 0 }

  if change >= 0.25
    difference = 0.25
    payload[:quarters] = payload.fetch(:quarters, 0) + 1
  elsif change >= 0.10
    difference = 0.10
    payload[:dimes] = payload.fetch(:dimes, 0) + 1
  elsif change >= 0.05
    difference = 0.05
    payload[:nickles] = payload.fetch(:nickles, 0) + 1
  elsif change >= 0.01
    difference = 0.01
    payload[:pennies] = payload.fetch(:pennies, 0) + 1
  else
    return payload
  end

  return chanchanchange((change - difference).round(2), payload)
end
