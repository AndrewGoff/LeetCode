# Checks to see if an integer is a palindrome, returns true or false
def is_palindrome(x)
    $z = x
    if x < 0 then
        return false
    end
    $y = 0
    while x > 0 do
        $y = $y * 10
        $y += x % 10
        x = x / 10
    end
    if $z == $y then
        return true
    end
	return false
end

# Examples
puts is_palindrome(123)
puts is_palindrome(12321)
gets