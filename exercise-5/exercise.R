# Exercise 5: Vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!

  words <- c("dog", "bear", "food", "hoop", "work", "phone")

# Create a new vector `words.of.the.day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (single or double) (e.g., `"data" is the word of the day!`)
  
  words.of.the.day <- paste0("'", words, "' is the word of the day")
  print(words.of.the.day)

# Create a vector `a.f.words` which are the elements in `words` that start with "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter of the word!
  
  a.f.words <- words[str_to_lower(substr(words, 1, 1)) < "f"]


# Create a vector `g.m.words` which are the elements in `words` that start with "g" through "m"
  
  g.m.words <- words[str_to_lower(substr(words, 1, 1)) >= "g" & 
                                    str_to_lower(substr(words, 1, 1)) <= "m"]

# Define a function `WordBin` that takes in three arguments: a vector of words, and two letters. The function
# should return a vector of words that go between those letters alphabetically.
  
  WordBin <- function(words, letter1, letter2) {
    return(words[str_to_lower(substr(words, 1, 1)) >= letter1 & 
                                str_to_lower(substr(words, 1, 1)) <= letter2])
  }
  
# Use your `WordBin` function to determine which of your words start with "e" through "q"
  
  test <- WordBin(words, "e", "q")
  