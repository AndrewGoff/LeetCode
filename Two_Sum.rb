# Returns the indices of  the nums array that add up to target
def two_sum(nums, target)
    $a = 0
    $b = 1
    while $a <= nums.length - 1 do
        while $b <= nums.length - 1 do
            if nums[$a] + nums[$b] == target
                return [$a, $b]
            end
            $b += 1
        end
        $a += 1
        $b = $a + 1
    end
end

# Example
p two_sum([1, 9, 3], 12)
gets