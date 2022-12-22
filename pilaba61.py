def F(x):
    return lambda a: x + a


x = int(input())
print(F(x)(88))
