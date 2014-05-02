# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Amol Borcar
# 2) Drew Teter

 # This is the file you should end up editing. 
 
 def bakery_num(customers, favorite_food)
  # The menu contains the offered food, and how many people each food serves.
  menu = {"pie" => 8, "cake" => 6, "cookie" => 1}
  # I'm sorting the menu in the order of which food serves the most people
  Hash[menu.sort.reverse]
  # Recording how many people the favorite food feeds
  favorite_food_servings = menu[favorite_food]
  # preparing the customer order in [food: quantity] format
  customer_order = Hash.new()
  
  # Making sure we can make their favorite food
  raise ArgumentError.new("You can't make that food") unless menu.has_key?(favorite_food)
  
  # Calculating the amount of each food so that no food will be left over
  if customers % favorite_food_servings == 0
    num_of_food = customers / favorite_food_servings
    return "You need to make #{num_of_food} #{favorite_food}(s)." 
  else 
    while customers > 0

      menu.each { |food, value|
        if value > favorite_food_servings # This guaruntees that the customers will get the maximum amount of their favorite food 
          customer_order[food] = 0
        else
          customer_order[food] = customers / value
          customers = customers % value
        end
      }
    end

    # Constructing the message to the cook if you need more than one food
    customer_order_string = "You need to make"
    customer_order.each { |food, value|
      unless customer_order.values.last == value
        customer_order_string << " #{value} #{food}(s),"
      else
        customer_order_string << " and #{value} #{food}(s)."
      end
    }
    # Outputing the order to the cook
    return customer_order_string
  end

end


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
puts bakery_num(24, "cake") == "You need to make 4 cake(s)."
puts bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
puts bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
puts bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
puts bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
puts bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
puts bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."

# Reflection

# I thought this challenge was a great practice in refactoring longer codes, which I think
# is a really good skill to have.  I especially liked how we needed to first determine the purpose
# of the code, which at least for us wasn't immediately obvious.  Once we got that in place, we could
# determine which pieces were unnecessary.  We actually went through a few different versions of our
# code before finally figuring out how to make it as dynamic as we wanted.  Drew actually worked on this
# some independently since we ran out of time, but we were on the same page and the things he added are exactly
# what I was trying to implement as well.  I thought overall it was enjoyable and a good review of some of the hash
# methods in a different, more practical context.