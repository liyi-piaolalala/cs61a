def is_prime(n):
    """Returns True if n is a prime number and False otherwise.
    >>> is_prime(2)
    True
    >>> is_prime(16)
    False
    >>> is_prime(521)
    True
    """
    "*** YOUR CODE HERE ***"
    def g(x):
        if x==1:
            return True
        elif n%x!=0:
            return g(x-1)
        else :
            return False
    return g(n-1)
    

