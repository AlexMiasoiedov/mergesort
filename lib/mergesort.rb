class Mergesort
  def mergesort(arr)
  	out = []
  	a_part = arr.slice(0, (arr.size / 2))
  	b_part = arr.slice(a_part.size, arr.size)

  	a_part = mergesort(a_part) if a_part.size > 1
  	b_part = mergesort(b_part) if b_part.size > 1

    a_offset = 0
    b_offset = 0

  	arr.size.times do
      a_item = a_part[a_offset]
      b_item = b_part[b_offset]

	  item =
	    if a_item && b_item
          if a_item < b_item
            a_offset += 1
            a_item
          else
            b_offset += 1
            b_item
          end
	    elsif a_item && !b_item
          a_offset += 1
          a_item
        elsif !a_item && b_item
          b_offset += 1
          b_item
        end

      out.push(item)
    end

    out
  end
end

