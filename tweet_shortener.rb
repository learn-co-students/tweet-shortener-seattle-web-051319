require "pry"
# Write your code here.
def dictionary 
	dictionary = {
		:hello => "hi", 
		:to => "2",
		:two => "2",
		:too => "2",
		:for => "4",
		:four => "4",
		:be => "b",
		:you => "u",
		:at => "@",
		:and => "&"
	}
end

def word_substituter(tweet)
#takes a string as argument
#shortens tweets by replacing words:
	#compare words in tweet against keys in hash
	#use .keys method to compare 
	#if mathces --> replace word with substitute value in hash
#convert tweet to array
#convert back to string (join)
# binding.pry
tweet = tweet.split
	tweet.each do |word|
		down_word = word.downcase
		
			if dictionary.keys.include?(down_word.to_sym) # if word in array tweet matches a key in #dictionary
				match = dictionary[down_word.to_sym][0]
				word.replace(match)
			end
	end
	tweet.join(" ")
end


def bulk_tweet_shortener(tweet_array)	
	tweet_array.each do |tweet|
		# binding.pry
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)	
	if tweet.length > 140
		word_substituter(tweet)
	else 
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if tweet.length > 140
		word_substituter(tweet)
		if word_substituter(tweet).length > 140
			"#{tweet[1..137]}..."
		end
	else 
		tweet
	end
end