# Returns the longest common prefix from an array of strings
def longest_common_prefix(strs)
    c = ""
    if strs.empty? == true then
    else
        strs = strs.sort
        a = strs[0].split("")
        b = strs[-1].split("")
        i = 0
        while i < a.length do
            if a[i] == b[i] then
                c += a[i]
                i += 1
            else
                break
            end
        end
    end
	return c
end

# Example
puts longest_common_prefix(["aabc", "aaaaa", "aadc"])
gets
	