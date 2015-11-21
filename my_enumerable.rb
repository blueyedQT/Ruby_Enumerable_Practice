module MyEnumerable
	def my_each
		each { |e| yield(e) }
	end

	def my_select
		[].tap { |out| each { |e| out << e if yield(e) } }	
	end

	def my_reject
		[].tap { |out| each { |e| out << e if !yield(e) } }
	end

	def my_map
		[].tap { |out| each { |e| out << yield(e) } }
	end
end

class Array
	include MyEnumerable 
end