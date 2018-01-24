def meal_selection
  puts "\nWaitress: 'Please pick an entree, two sides, and a drink!'  (Just tell me the numbers) ^_^\n"
  @order = Hash.new

  # Choice validation and building order hash
  print "Entree: "
  loop do
    @entree_choice = gets.chomp.to_i
    if entree_validation(@entree_choice) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["entree"][@entree_choice])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["entree"][@entree_choice])
      else
        @order.merge!(@dinner_nested["entree"][@entree_choice])
      end
      break
    else
      print "Please pick a valid entree number: "
    end
  end

  print "First side: "
  loop do
    @side_choice1 = gets.chomp.to_i
    if side1_validation(@side_choice1) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["sides"][@side_choice1])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["sides"][@side_choice1])
      else
        @order.merge!(@dinner_nested["sides"][@side_choice1])
      end
      break
    else
      print "Please pick a valid side number: "
    end
  end
  
  print "Second side: "
  loop do
    @side_choice2 = gets.chomp.to_i
    if side2_validation(@side_choice2) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["sides"][@side_choice2])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["sides"][@side_choice2])
      else
        @order.merge!(@dinner_nested["sides"][@side_choice2])
      end
      break
    elsif @side_choice2 == @side_choice1  # Don't allow the same choice of sides
      print "Please pick a different side than the first: "
    else
      print "Please pick a valid side number: "
    end
  end

  print "Drink: "
  loop do
    @drink_choice = gets.chomp.to_i
    if drink_validation(@drink_choice) == true
      @order.merge!(@drinks_nested[@drink_choice])
      break
    else
      print "Please pick a valid drink number: "
    end
  end
  puts "\n"

  print "Order: \n"
  puts @order
  puts "\n"

  waitress_comment
end

def waitress_comment
  comment = [
    "Waitress: 'Good choice!",
    "Waitress: 'You have fine taste!",
    "Waitress: 'That is an excellent choice!",
    "Waitress: 'That's one of my favorites.",
    "Waitress: 'Okay, sounds good!",
    "Waitress: 'I'll get right on that!",
    "Waitress: 'That's a really good choice.'",
    "Waitress: 'I think that's a great choice!",
    "Waitress: 'Well, whatever you want.",
    "Waitress: 'I recommend something else, honestly.",
    "Waitress: 'Whatever floats your boat ... *smile*",
    "Waitress: 'Um ... okay  ^____^",
    "Waitress: 'Alrighty then.",
    "Waitress: 'That option comes highly recommended by the chef."
  ]
  random = rand(comment.size)
  puts comment[random]
end