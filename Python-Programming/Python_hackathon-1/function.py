
def fibonacci(n):

    sequence = [0, 1]  # Initialize with the first two terms
    
    # Generate Fibonacci sequence up to term n
    while len(sequence) < n:
        next_term = sequence[-1] + sequence[-2]
        sequence.append(next_term)
    
    return sequence

def main():
    # Ask the user to input the value of n
    n = int(input("Enter the value of n: "))
    
    # Create a function that generates Fibonacci sequence
    sequence = fibonacci(n)
    
    # Print the generated Fibonacci sequence
    print("Fibonacci sequence up to term", n, ":", sequence)

if __name__ == "__main__":
    main()
