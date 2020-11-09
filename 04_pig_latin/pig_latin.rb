#write your code here
def translate(words)
    word = words.split.map{ |item| new_word(item)}.join(" ")
    
  end
  
  def vowel(letter) #check if first letter is vowel
    ifvowel = false
    vowels = ["a", "e", "i", "o", "u"]
    vowels.each do |vowel| 
      if letter == vowel
        ifvowel = true
      end
    end
    ifvowel
end

def consonant(letters) #check if first several letters are consonants
  letters = letters.split('') if letters.length > 0 # array of first letters
  i = 0
  count = letters.length
  ifconsonant = false
  vowels = ["a", "e", "i", "o", "u"]
  
  while i < letters.length do
      # puts letters[i]
      vowels.each do |vowel|
          if letters[i] == vowel 
              count -= 1
          end
      end
      i += 1
  end
  
  if count == letters.length
      ifconsonant = true
  end
  return ifconsonant
end

def new_word(word)
  new_word = ""
  if vowel(word.slice(0)) 
    new_word = word + "ay"
  elsif consonant(word.slice(0..2)) || (word.slice(1..2) == "qu")
    first_letters = word.slice(0..2)
    letters = word.slice(3..(word.length))
    new_word = letters + first_letters + "ay"
  elsif (word.slice(0..1) == "qu") || (consonant(word.slice(0..1)))
    first_letters = word.slice(0..1)
    letters = word.slice(2..(word.length))
    new_word = letters + first_letters + "ay"
  elsif consonant(word.slice(0))
    first_letter = word.slice(0)
    letters = word.slice(1..(word.length))
    new_word = letters + first_letter + "ay"
  end
  new_word
end