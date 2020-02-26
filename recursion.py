def recurse(n):
    if n == 0 or n == 1:
        return n

    return recurse(n - 1) + recurse(n - 2)


if __name__ == '__main__':
    import timeit

    print(timeit.timeit("recurse(4)", setup="from __main__ import recurse"))
