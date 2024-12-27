def num_to_bytes(n):
    byte_length = (n.bit_length() + 7) // 8
    return n.to_bytes(length=byte_length).decode()
