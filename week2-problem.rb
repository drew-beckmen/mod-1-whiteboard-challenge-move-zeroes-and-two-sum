def move_zeroes(nums)
    num_zeroes = nums.count(0)
    nums.delete(0)
    num_zeroes.times do 
        nums << 0
    end 
    nums
end 

# Alternative Solution (using built in iterator methods): numbers.combination(2).find_all{|x, y| x + y == target}.flatten
# Another helpful iteration method .each_with_index {|entry, index| ...}
def two_sum(numbers, target)
    for i in 0...numbers.length
        j = i + 1
        for j in j...numbers.length
            if numbers[i] + numbers[j] == target 
                return {index1: i, index2: j}
            end 
        end 
    end 
end 

pp move_zeroes([1, 2, 0, 4, 0, 5, 6, 7]) #=> [1, 2, 4, 5, 6, 7, 0, 0]
puts two_sum([2, 7, 11, 15], 9) #=> {:index1=>0, :index2=>1}
puts two_sum([1, 2, 0, 9], 9) #=> {:index1=>2, :index2=>3}