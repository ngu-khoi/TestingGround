# fibonacci sequence closed form
def fib(n):
    return int(((1 + 5 ** 0.5) / 2) ** n / 5 ** 0.5 + 0.5)

print(fib(1))