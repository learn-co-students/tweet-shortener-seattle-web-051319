# Write your code here.
require 'pry'

def dictionary
  shortened = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string.split(" ").collect do |value|
    if dictionary.keys.include?(value.downcase)
      value = dictionary[value.downcase]
    else
      value
    end
  end.join(" ")
end

def bulk_tweet_shortener(string)
  string.map do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    tweet = word_substituter(string)
    tweet[0..136] + "..."
  else
    string
  end
end
