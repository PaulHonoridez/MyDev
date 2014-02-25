class Stack
	def initialize(arr)
		@stack_arr = arr
	end
	
	def pop(num)
		delNums = Array.new
		maxN = num - 1
		for i in 0..maxN
			delNums[i] = @stack_arr.pop
		end
		puts "\nStack.pop[#{num}]: result = #{@stack_arr}"
		#return delNums
	end
	
	def push(newarr)
		size = newarr.size
		
		for i in 0..size
			if newarr[i] != nil
				@stack_arr.push(newarr[i])
			end
		end
		
		puts "\nStack.push[#{size}]: result = #{@stack_arr}"
	end
	
	def to_a
		puts "\nStack.to_a: #{@stack_arr}"
	end
	
end

st = Stack.new([5,6,7,8])

puts st.to_a

st.pop(1)

st.pop(1)

st.push([4,2])

st.pop(3)

st.to_a