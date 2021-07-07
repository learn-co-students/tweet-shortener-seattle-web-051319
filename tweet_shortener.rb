require "pry"

def word_substituter(tweet)
  dictionary = {
    :"hello" => "hi",
    :"to" => "2",
    :"two" => "2",
    :"too" => "2",
    :"for" => "4",
    :"four" => "4",
    :"be" => "b",
    :"you" => "u",
    :"at" => "@",
    :"and" => "&"
  }
  
  short_tweet = []
  tweet_array = tweet.split(" ")
  
  tweet_array.each do |original|
    replacement = original
    dictionary.each do |word, abbrev|
      if word.to_s == original.downcase
        replacement = abbrev
      end
    end
    short_tweet << replacement
  end
  
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet) 
  elsif tweet.length < 140
    tweet
  else
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  tweet_length = new_tweet.length
  if tweet_length > 140
    new_tweet.slice(0,140)
  else 
    new_tweet
  end
end

