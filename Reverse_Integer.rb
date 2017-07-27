# Reverses the digits of a number, returns 0 if 32-bit signed overflow
def reverse(x)
    $y = 0
    $neg = 1
    if x < 0 then
        $neg = -1
        x = x * $neg
    end
    while x > 0 do
        $y = $y * 10
        $y += x % 10
        x = x / 10
    end
    if $y > 2**31 then
        return 0
    elsif
        $y = $y * $neg
        return $y
    end
end

# Examples
puts reverse(123)
puts reverse(-123)
puts reverse(1000000003)
gets