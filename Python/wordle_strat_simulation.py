import random

# List of 10,000 words (you should replace this with actual words)
words = ["word" + str(i) for i in range(10000)]


def simulate_strategy_1(words):
    """
    Strategy 1: Choose a word and stick to it until it's correct, then choose a new word.

    This strategy simulates guessing the same word each day until it's correct,
    then randomly selecting a new word to guess from the remaining words.

    Args:
    words (list): List of words to simulate guesses for.

    Returns:
    int: Number of correct first guesses.
    """
    correct_first_guesses = 0
    remaining_words = words.copy()
    current_guess = random.choice(remaining_words)

    for day, word_of_the_day in enumerate(words, 1):
        print(f"Day {day}: Word of the day is '{word_of_the_day}'")
        print(f"Current guess: '{current_guess}'")

        if word_of_the_day == current_guess:
            correct_first_guesses += 1
            print("Correct guess!")
        else:
            print("Incorrect guess.")

        remaining_words.remove(word_of_the_day)

        if word_of_the_day == current_guess and remaining_words:
            current_guess = random.choice(remaining_words)
            print(f"Choosing new guess: '{current_guess}'")

        print()  # Empty line for readability

    return correct_first_guesses


def simulate_strategy_2(words):
    """
    Strategy 2: Randomly guess from all remaining words each day.

    This strategy simulates randomly guessing a word each day from all
    remaining words that haven't been the correct answer yet.

    Args:
    words (list): List of words to simulate guesses for.

    Returns:
    int: Number of correct first guesses.
    """
    correct_first_guesses = 0
    remaining_words = words.copy()

    for day, word_of_the_day in enumerate(words, 1):
        print(f"Day {day}: Word of the day is '{word_of_the_day}'")

        guess = random.choice(remaining_words)
        print(f"Today's guess: '{guess}'")

        if guess == word_of_the_day:
            correct_first_guesses += 1
            print("Correct guess!")
        else:
            print("Incorrect guess.")

        remaining_words.remove(word_of_the_day)
        print()  # Empty line for readability

    return correct_first_guesses


# Simulate both strategies
correct_guesses_1 = simulate_strategy_1(words.copy())
correct_guesses_2 = simulate_strategy_2(words.copy())

# Calculate and print results
print("Strategy 1:")
print(f"Number of correct first guesses: {correct_guesses_1}")
print(
    f"Percentage of correct first guesses: {correct_guesses_1 / len(words) * 100:.2f}%"
)

print("\nStrategy 2:")
print(f"Number of correct first guesses: {correct_guesses_2}")
print(
    f"Percentage of correct first guesses: {correct_guesses_2 / len(words) * 100:.2f}%"
)
