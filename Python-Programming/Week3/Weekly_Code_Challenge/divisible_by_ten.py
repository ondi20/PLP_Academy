def divisible_by_ten(num):
    result =num%10
    if result == 0:
        return True
    else:
        return False

print(divisible_by_ten(39))