#write your code here
def echo(sentance)
    "#{sentance}"
end

def shout(sentance)
    "#{sentance.upcase}"
end


def repeat(sentance, q=2)
    if q == 1
      r=sentance
    else
      r = ""
      (q-1).times do
          puts r+=sentance + " "
      end
      r+= sentance
    end
    r
end

def start_of_word(word, q)
    word.slice(0..q-1)
end

def first_word(word)
    # word.split.first
    word.split(" ")[0]
end


def titleize(word)
    little_words = ["and", "over", "the"]
    words = word.split.map{
        |item| 
        if !little_words.include?(item) 
            item.capitalize 
        else 
            item
        end
    }
    words[0] = words[0].capitalize
    words.join(" ")
end