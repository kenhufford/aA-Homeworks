def find_fish(array)
    longest_fish = array[0]
    array.each do |fish|
        longest_fish = fish if fish.length > longest_fish.length
    end
    longest_fish
end

def find_fish2(array)
    mid = array.length/2
    left = array.take(mid)
    right = array.drop(mid)
    
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p find_fish(array)
