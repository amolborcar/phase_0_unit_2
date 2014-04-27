# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
  # This line creates a new array called alphabet that contains every letter
    alphabet = ('a'..'z').to_a
  # This line creates a new hash called cipher.  
  # The zip method creates a new array for each element of the alphabet array.  The first
  # element in each array is the value of the alphabet array.  The second member is handled
  # by the rotate method.  The rotate method shifts the items in the array by 4 positions, so
  # for example the first element in the new array will be [a, e].  
  # The Hash created has the first value of the element as the key, and the second as the value (a => e)
  # I believe this could also be done using the .to_h method.
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
  # Creates a new array with special symbols
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
  # Creates a new sentence that is a lower case version of the original sentence
    original_sentence = sentence.downcase
  # Creates a new blank array
    encoded_sentence = []
  # Iterates through every character in the original_sentence variable
    original_sentence.each_char do |element|
  # If the character is in the cipher hash, translate the element and push to the encoded_sentence
      if cipher.include?(element)
        encoded_sentence << cipher[element]
  # If the character is a blank, push a random item from the spaces array to the encoded_sentence
      elsif element == ' '
        encoded_sentence << spaces.sample
  # If the character is anything else, push it directly to the encoded_sentence
      else 
        encoded_sentence << element
      end
     end
  # Join the encoded_sentence array into a string and return it  
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
  # It converts the item it is called on into an array
# 2. How does the rotate method work? What does it work on?
  # It works on an array by moving the element specified to the first in the array, and adjusting
  # all other elements accordingly
# 3. What is `each_char` doing?
  # This iterates through every character in the item it is called on, in this case the original sentence
# 4. What does `sample` do?
  # Picks a random item from the array it is called on
# 5. Are there any other methods you want to understand better?
  # See comments above, I think I looked at all of them
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
  # The new way of creating the hash is definitely better in this code, we were trying to do something
  # similar in our code but couldn't figure out how to write it.  The rest, though, seems a little more wordy.
# 7. Is this good code? What makes it good? What makes it bad?
  # I think this code is good, but I'm not entirely sure the elsif element == '' makes sense. It seems like that
  # piece of code is reversed.  EDIT: nevermind, because it is a REVERSE cipher it makes sense to test on spaces.  I get it now :)


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# No it does not, the spaces.sample method chooses a random character from the spaces array, so each
# space picks a random special character in the output.




# 5. Reflection

# I thought this was a good reflection on some Ruby methods that seem useful.  I was already familiar
# with most of them, but some like .sample were completely new and seeing .rotate and .zip used correctly
# was very useful.  Overall I enjoyed this challenge, it was simple but a good review.

