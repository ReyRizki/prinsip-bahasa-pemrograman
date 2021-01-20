def palindrome(x)
  left = 0
  right = x.length() - 1

  while left < right
    if x[left] != x[right]
      return false
    end

    left += 1
    right -= 1
  end

  return true
end
