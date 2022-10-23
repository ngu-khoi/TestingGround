# a function that takes prompts the user for a string and a shift value
# and returns the encoded string
def shift():
    # prompt the user for a string
    string = input("Enter a string: ")
    # prompt the user for a shift value
    shift = int(input("Enter a shift value: "))
    # create an empty string
    new_string = ""

    # shift string based on shift value
    for i in string:
        # if the character is a space, add it to the new string
        if i == " ":
            new_string += i
        # if the character is a lowercase letter, shift it
        elif i.islower():
            # if the character is shifted past z, wrap around to a
            if ord(i) + shift > ord("z"):
                new_string += chr(ord(i) + shift - 26)
            # otherwise, shift the character
            else:
                new_string += chr(ord(i) + shift)
        # if the character is an uppercase letter, shift it
        elif i.isupper():
            # if the character is shifted past Z, wrap around to A
            if ord(i) + shift > ord("Z"):
                new_string += chr(ord(i) + shift - 26)
            # otherwise, shift the character
            else:
                new_string += chr(ord(i) + shift)
        # if the character is a number, shift it
        elif i.isdigit():
            # if the character is shifted past 9, wrap around to 0
            if ord(i) + shift > ord("9"):
                new_string += chr(ord(i) + shift - 10)
            # otherwise, shift the character
            else:
                new_string += chr(ord(i) + shift)
        # if the character is a special character, shift it
        else:
            new_string += chr(ord(i) + shift)

    # return the new string
    print("DEBUG: " + new_string)

# call the function
shift()