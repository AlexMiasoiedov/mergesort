require './lib/mergesort'

ms = Mergesort.new

#arr = (..rand(22)).to_a.shuffle.map(&:chr)
arr = (65..122).to_a.shuffle.map(&:chr)
puts("unsorted: #{arr}")

out = ms.mergesort(arr)

puts("sorted:   #{out}")

