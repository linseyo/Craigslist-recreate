module Randomable

  def Randomable.make_random_string(length)
    return ('a'..'z').to_a.shuffle[0,length].join
  end

end

