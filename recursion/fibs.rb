def fibs(n)
  list = []
  if n >= 1 then list.append(0) end
  if n >= 2 then list.append(1) end
  for i in 3..n
    num = list[-1] + list[-2]
    list.append(num)
  end
  return list
end

def fibs_rec(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0,1]
  else
    list = fibs_rec(n-1)
    list.append(list[-1] + list[-2])
    return list
  end
end

def merge_sort(list)
  if list.length <= 1
    return list
  else
    new_list = []
    a = merge_sort(list[0 ...(list.length / 2).floor])
    b = merge_sort(list[((list.length / 2).floor) ... list.length])
    for i in 0...list.length
      if a.empty?
        new_list.append(b[0])
        b.delete_at(0)
      elsif b.empty? or a[0] < b[0]
        new_list.append(a[0])
        a.delete_at(0)
      elsif b[0] < a[0]
        new_list.append(b[0])
        b.delete_at(0)
      end
    end
    return new_list
  end
end

puts merge_sort([7,6,3,5,2,1,4]).join(", ")