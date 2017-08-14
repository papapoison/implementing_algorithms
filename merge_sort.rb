require 'rubygems'
require 'byebug'

def merge_sort(arr)
	n = arr.length

	return arr if n == 1

	p = n/2
	q = p - 1
	
	left = merge_sort(arr[0..q])
	right = merge_sort(arr[p..-1])

	merge(left, right)
end

def merge(left, right)
	print "Left -- #{left}\n"
	print "Right -- #{right}\n"
	arr = []

	until left.empty? || right.empty? do
		if left.first <= right.first
			arr << left.shift
		else
			arr << right.shift
		end
		print "#{arr}\n"
	end

	print "#{arr}\n"
	arr.concat(left).concat(right)
end

print merge_sort([5, 2, 4, 7, 1, 3, 2, 6])