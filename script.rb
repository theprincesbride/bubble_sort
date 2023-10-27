require 'pry-byebug'
def bubble_sort(array)
    i = 0
   ## binding.pry
while i < array.length - 1
    current_num = array[i]
    next_num = array[i + 1]
    if current_num > next_num && i == 0
        array.shift
        array.insert(i + 1, current_num)
        i -= 1
    elsif current_num > next_num
        array.delete_at(i)
        array.insert(i + 1, current_num)
        i = -1
    end
    i += 1
end
    p array

end



num_array = [4, 3, 78, 2, 0, 2]
num_array2 = [95, 56, 11, 3, 0, 90, 35, 69, 15]
bubble_sort(num_array)
bubble_sort(num_array2)
