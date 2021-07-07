def dictionary(word)
	substitutes = {
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
	
	substitutes.each {|key, value| word = value if key == word.downcase}
	word
end

def word_substituter(tweet)
	tweet.split(" ").map {|word| dictionary(word)} .join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end	
end
	
def shortened_tweet_truncator(tweet)
	if tweet.length > 140 && word_substituter(tweet).length > 140
		word_substituter(tweet)[0..138] + "…"
	elsif tweet.length > 140 && word_substituter(tweet).length <= 140
		word_substituter(tweet)
	else
		tweet
	end
end