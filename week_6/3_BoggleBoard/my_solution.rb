# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
	
	def initialize(grid)
		@grid = grid
	end

	@new_array = Array.new()

	def create_word(coords)
		@coords = coords
		@coords.each do |x|
			@new_array.push(@grid[x[0]][x[1]])
		end
		# @coords.each do |x|
		# 	print x[0]
		# end
		@new_array.join("")
	end


  #your code here
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
boggle_board.create_word([[1,2],[1,1],[2,1],[3,2]])
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection 