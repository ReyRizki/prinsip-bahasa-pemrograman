fibs = 1 : 1 : fibsFollowing 1 1
    where fibsFollowing a b = (a+b) : fibsFollowing b (a+b)