def num_to_bytes(n):
    byte_length = (n.bit_length() + 7) // 8
    return n.to_bytes(length=byte_length)

def euler_phi_from_factors(n, factors):
    """
    Compute the Euler's totient function phi(n) given the factors of n.

    :param n: The integer n for which phi(n) is to be computed.
    :param factors: A list of prime factors of n.
    :return: The value of phi(n).
    """
    phi = n
    for p in factors:
        phi *= (1 - 1/p)
    return int(phi)
