# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution

 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]


# 4. Refactored Solution
# I don't see anything to refactor...


class BoggleBoard

  #your code here
	
	def initialize(grid)
		@grid = grid
	end

	def create_word(coords)
		@word_array = []

		coords.each do |x|
			@word_array.push(@grid[x[0]][x[1]])
		end
		
		p @word_array.join("")

	end

	def get_row(row)
		return @grid[row]
	end

	def get_column(col)
        @col_array = []
        @grid.each do |row|
            @col_array.push(row[col])
        end
        return @col_array
    end

 
end

 
boggle_board = BoggleBoard.new(dice_grid)



# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

def assert
	raise "Wrong result or run error!" unless yield
end

# implement tests for each of the methods here:

assert { boggle_board.create_word([[1,2],[1,1],[2,1],[3,2]]) == "dock" }
assert { boggle_board.get_row(1) == ['i','o','d','t'] }
assert { boggle_board.get_column(1) == ['r','o','c','a'] }


# 5. Reflection 

# I had to sleep on this challenge because I couldn't get it to work correctly at first, but when I returned
# it was just a simple syntax error.  I think my final answer to this challenge was very similar
# to my original Boggle Board challenge, because in that challenge (which I paired on) we created
# the boggle board as its own class.  So except for the new word method, everything here was very similar.
# I'm not sure if that is how it was supposed to work.  Either way, I didn't find this too challenging after
# I took a step back and tried it again.  I think this challenge did help reinforce how I work best, though,
# and I'm glad I didn't just spin my wheels for a while trying to figure it out.