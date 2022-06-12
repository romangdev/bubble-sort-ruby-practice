def bubble_sort(array)
    swap = true
    while swap == true
        swap = false
        array.each_with_index do 
            |number, idx|
            #add flag to check if any swaps were made, continue until no swaps. check one less
            #idx for each iteration
            if array[idx + 1] == nil
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
    end
    p array
end

bubble_sort([4,3,78,2,0,2])