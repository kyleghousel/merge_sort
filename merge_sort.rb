def merge_sort (array)
  return array if array.length == 1
  #find middle
  middle = array.each_slice( (array.size/2.0).round )
  #call merge using merge_sort as l and r
  merge (merge_sort(array[0..middle]),merge_sort(array[middle..-1]))
end

def merge (l, r)
  merged = []
  #merge halves into one array
  #compare values, put smaller value at front of array, put larger value at back
  #return the merged, or combined array
end