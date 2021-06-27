
def bubble_sort(ls)
  done = false
  until done
    done = true
    (0..ls.size-2).each do |i|
      if ls[i] > ls[i+1]
        ls[i], ls[i+1] = ls[i+1], ls[i]
        done = false
      end
    end
  end

  return ls
end

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]