def is_prime(n):
    """
    >>> is_prime(10)
    False
    >>> is_prime(7)
    True
    >>> is_prime(1) # one is not a prime number!!
    False
    """
    "*** YOUR CODE HERE ***"
    from math import sqrt
    flag=True
    t=2
    while t<n:
        if n%t==0:
            flag=False
        t+=1
    if n==1:
        flag=False
    print(flag)
    return None 

