#!/usr/bin/python3
"""
    This script performs the following tasks:
        - Creates a new text file named "my_file.txt" and writes three lines of text to it.
        - Reads the contents of "my_file.txt" and displays them on the console.
        - Appends three additional lines of text to the existing content of "my_file.txt".
        - Implements error handling using try, except, and finally blocks to manage potential 
            file-related exceptions such as FileNotFoundError and PermissionError.
"""
def create_file():
    try:
        # Create a new text file named "my_file.txt" in write mode ('w')
        with open("my_file.txt", "w") as file:
            # Write at least three lines of text to the file
            lines = ["First line\n", "Second line\n", "Third line\n"]
            file.writelines(lines)
            print("File created successfully.")
    except PermissionError:
        print("Permission denied. Cannot create the file.")
    except Exception as e:
        print(f"An error occurred: {e}")
    finally:
        print("File creation process completed.")

def read_file():
    try:
        # Open "my_file.txt" in read mode ('r')
        with open("my_file.txt", "r") as file:
            # Read and display the contents of the file
            print("Contents of 'my_file.txt':")
            print(file.read())
    except FileNotFoundError:
        print("File not found. Cannot read the file.")
    except PermissionError:
        print("Permission denied. Cannot read the file.")
    except Exception as e:
        print(f"An error occurred: {e}")

def append_file():
    try:
        # Open "my_file.txt" in append mode ('a')
        with open("my_file.txt", "a") as file:
            # Append three additional lines of text to the existing content
            lines = ["Fourth line\n", "Fifth line\n", "Sixth line\n"]
            file.writelines(lines)
            print("Lines appended successfully.")
    except PermissionError:
        print("Permission denied. Cannot append to the file.")
    except Exception as e:
        print(f"An error occurred: {e}")
    finally:
        print("File appending process completed.")

if __name__ == "__main__":
    create_file()
    print()  # Empty line for readability
    read_file()
    print()  # Empty line for readability
    append_file()
