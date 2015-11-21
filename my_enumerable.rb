module MyEnumerable
	def my_each
		if block_given?
			puts self.each { |e| yield(e) }
		end
	end
end

class Array
	include MyEnumerable 
end

# arr = [12, 24, 8, 9]
# output = []
# arr.my_each { |x| x }
# 	#output << x + 20 }