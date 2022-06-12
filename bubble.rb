def bubble_sort(array)
    swap = true
    iteration = 0
    while swap == true
        swap = false
        array.each_with_index do 
            |number, idx|
            if array[idx + 1] == nil || idx == array.length - 1 - iteration
                next
            elsif array[idx] > array[idx + 1]
                hold = array[idx + 1]
                array[idx + 1] = array[idx]
                array[idx] = hold
                swap = true
            else
                next
            end
        end 
        iteration += 1
    end
    array
end

bubble_sort([1,3,5,9,8,10])
# => [0,2,2,3,4,78]