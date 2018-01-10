def mergesort(arr)
  out = []
  a_part = arr.slice(0, (arr.size / 2))
  b_part = arr.slice(a_part.size, arr.size)

  a_part = mergesort(a_part) if a_part.size > 1
  b_part = mergesort(b_part) if b_part.size > 1

  arr.size.times do  
    a_item = a_part.first
    b_item = b_part.first

	item =
	  if a_item && b_item
        (a_item < b_item ? a_part : b_part)
	  elsif a_item && !b_item
        a_part
      elsif !a_item && b_item
	    b_part
      end.shift

    out.push(item)
  end

  out
end

arr = (rand(1)..rand(20)).to_a.shuffle
puts("initial array: #{arr}")
out = mergesort(arr)
puts("sorted array:  #{out}")

