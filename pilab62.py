def F1(x, F2):
    return F2(x) + 66


def F2(x):
    return (x + 99) ** 2


x = int(input())
print(F1(x, F2))
