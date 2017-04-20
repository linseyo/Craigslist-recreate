
def make_random_string(length)
  return ('a'..'z').to_a.shuffle[0,length].join
end

def convert_cents_to_money_string(cents)
  return Money.us_dollar(cents).format
end