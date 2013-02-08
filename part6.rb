class Numeric
	@@currencies = {'dollar'=> 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end

	 def in(currency)
		 singular_currency = currency.to_s.gsub( /s$/, '')
		 if @@currencies.has_key?(singular_currency)
				self / @@currencies[singular_currency]
		end  
	 end 
end

class String
	def palindrome?
		s = self.downcase.gsub(/[^a-z]/,'');
		s == s.reverse;
	end
end

module Enumerable

	def palindrome?
		return false if self.is_a?(Hash)
		self.to_a == self.to_a.reverse
	end
end

