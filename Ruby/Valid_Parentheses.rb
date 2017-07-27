# Determines if the string has characters closing in the proper order
def is_valid(s)
	stack = []
	$i = 0
	while $i < s.length do
		case s[$i]
			when "(", "{", "["
				stack << s[$i]
			when ")"
				if stack.pop != "("
					return false
				end
			when "}"
				if stack.pop != "{"
					return false
				end
			when "]"
				if stack.pop != "["
					return false
				end
			end
		$i += 1
	end
	if stack != []
		return false
	end
	return true
end

# Examples
puts is_valid("((")
puts is_valid("([{}])")
puts is_valid("()()()")