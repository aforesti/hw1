#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
	s = str.downcase.gsub(/[^a-z]/,'');
	return s == s.reverse;
end

def count_words(str)
	words = Hash.new(0)  
	str.downcase.scan(/\w+/) do |w|
		words[w] += 1
	end
 	words
end

p count_words "the code below this line will test your functions.  You should remove everything below this line prior to submitting your file"
["a","B"]

