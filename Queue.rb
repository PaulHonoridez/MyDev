class Queue
	def initialize(arr)
		@stack_arr = arr
	end
	
	def pop(num)
		#puts "pop STACK_ARR = #{@stack_arr}"
		deletedNums = Array.new
		maxN = num - 1
		for i in 0..maxN
			#puts "pop: i = #{i}"
			#puts "pop: BEFORE length = #{@stack_arr.size} i = #{i}"
			deletedNums[i] = @stack_arr.delete_at(0)
			#puts "pop: AFTER length = #{@stack_arr.size}"
		end
		
		#puts "\nQueue.pop[#{num}]: result = #{@stack_arr}"
		puts "\nQueue.pop[#{num}]: result = " + @stack_arr.inspect
		
		#return "#{deletedNums}"
	end
	
	def push(newarr)
		size1 = @stack_arr.size
		size2 = newarr.length
		
		#puts "size1 = #{size1}"
		#puts "size2 = #{size2}"
		
		a = Array.new
		
		for i in 0..size1
			if @stack_arr[i] != nil
				a.push(@stack_arr[i])
				#puts "HERE 1"
			end
		end
	
		for i in 0..size2
			if newarr[i] != nil
				a.push(newarr[i])
				#puts "HERE 2"
			end
		end
		
		@stack_arr = a
		
		#puts "\nQueue.push[#{size2}]: result = #{@stack_arr}"
		puts "\nQueue.push[#{size2}]: result = " + @stack_arr.inspect
		
	end
	
	def to_a
		#puts "\nQueue.to_a: #{@stack_arr}"
		puts "\nQueue.to_a: " + @stack_arr.inspect
		
	end
	
end

st = Queue.new([5,6,7,8])

st.to_a

st.pop(1)

st.pop(1)

st.push([4,2])

st.pop(2)

st.to_a