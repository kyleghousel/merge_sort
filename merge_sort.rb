def merge_sort (array)
  return array if array.length == 1
  #find middle
  middle = array.length/2.0
  left = array[0...middle]
  right = array[middle..-1]
  #call merge using merge_sort as l and r
  merge(merge_sort(left), merge_sort(right))
end

def merge (l, r)
  merged = []
  #merge halves into one array
  #compare values, put smaller value at front of array, or put larger value at back
  until l.empty? || r.empty?
    if l.first <= r.first
      merged << l.shift
    else
      merged << r.shift
    end
  end
  #return the merged, or combined array
  merged + l + r
end