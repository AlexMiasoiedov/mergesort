require '../lib/mergesort'
require 'benchmark'

ms = Mergesort.new

itrs = 100_00
o_arr = (1..100).to_a.shuffle


Benchmark.bm do |bm|

bm.report do
  itrs.times do
	arr = Array.new(o_arr)
    ms.mergesort(arr)
  end
end

bm.report do
  itrs.times do
    arr = Array.new(o_arr)
    arr.sort
  end
end
end


#       user     system      total        real

#worst
#   1.800000   0.010000   1.810000 (  1.813529)
#   0.050000   0.000000   0.050000 (  0.045064)

#best
#   1.490000   0.000000   1.490000 (  1.500345)
#   0.040000   0.010000   0.050000 (  0.046035)
