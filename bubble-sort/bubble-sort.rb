def bubble_sort(list)
  for i in 0...(list.length)
    a = list.length - i
    for j in 0...a-1
      if list[j] > list[j+1]
        temp = list[j+1]
        list[j+1] = list[j]
        list[j] = temp
      end
    end
  end
  return list
end

puts bubble_sort([4,3,78,2,0,2])