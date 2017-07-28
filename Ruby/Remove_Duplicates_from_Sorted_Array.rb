# Ititerates through a sorted array, removing duplicates by rearranging elements and returning new length
def remove_duplicates(nums)
	if nums.length == 0
		return 0
	end
	$unique_numbers = 1
	$current_number = nums[0]
	$i = 1
	while $i < nums.length do
		if nums[$i] != $current_number
			$current_number = nums[$i]
			nums[$unique_numbers] = nums[$i]
			$unique_numbers += 1
		end
		$i += 1
	end
	return $unique_numbers
end

# Example
$array = [1, 1, 1, 2, 3, 3, 4, 4, 5]
p remove_duplicates($array)
p $array