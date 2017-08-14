def insertion_sort(arr)
	arr.each_with_index do |key, i|
		# Set `j` equal to the index before i
		j = i - 1
		while j >= 0 && arr[j] > key do
			# Set value of key immediately after `j` to value of `arr[j]`
			arr[j + 1] = arr[j]
			j -= 1
		end
		# Set value at index after `j` to `key`
		puts "#{arr} -- iteration ##{i + 1} before insert"
		arr[j + 1] = key
		puts "#{arr} -- iteration ##{i + 1} after insert\n\n"
	end

	puts "Fully sorted array! -- #{arr}\n\n"
end

insertion_sort([5, 2, 4, 6, 1, 3])
insertion_sort([31, 41, 59, 26, 41, 58])