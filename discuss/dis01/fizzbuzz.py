def fizzbuzz(n):
    """
    >>> result = fizzbuzz(16)
    1
    2
    fizz
    4
    buzz
    fizz
    7
    8
    fizz
    buzz
    11
    fizz
    13
    14
    fizzbuzz
    16
    >>> print(result)
    None
    """
    "*** YOUR CODE HERE ***"
    t=1
    while t<=n:
        if t%15==0:
            print('fizzbuzz')
        elif t%3==0:
            print('fizz')
        elif t%5==0:
            print('buzz')
        else  :
            print(t)
        t+=1




        