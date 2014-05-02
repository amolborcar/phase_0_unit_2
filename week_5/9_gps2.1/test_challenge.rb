# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Amol Borcar
# 2) Drew Teter

 # This is the file you should end up editing. 
 
 # Purpose: supply a certain number of people their favorite food
 
def bakery_num(customers, fav_food)
  # Creates new hash and variables
  #my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # This should be renamed to something more intuitive
  feeds_num = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  raise ArgumentError.new("You can't make that food") unless feeds_num.has_key?(fav_food)
   
  # Create new variable that = value of hash where key = fav_food  
  fav_food_qty = feeds_num[fav_food]
  
  # If the number of people can be evenly divided
  if customers % fav_food_qty == 0
    num_of_food = customers / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  
  # If the number of people cannot be evenly divided  
  else customers % fav_food_qty != 0
    
    # while there are customers left
    # iterate through the menu
    # if food feeds more than fav food do nothing
    # make n foods where n = people left to feed / how many people food feeds
    while customers > 0
      feeds_num.each { |food,value|
        if value <= fav_food_qty
          order = Hash.new
          order[food] = customers / value
          
        #   case food 
        #   when "pie"
        #     pie_qty = customers / value
        #   when "cake" 
        #     cake_qty = customers / value
        #   when "cookie"
        #     cookie_qty = customers / value
        #   end
        #   customers = customers % value
        # end
          customers = customers % value
        end
      }
    end
    
    return "You need to make #{order["pie"]} pie(s), #{order["cake"]} cake(s), and #{order["cookie"]} cookie(s)."
    
  end
end