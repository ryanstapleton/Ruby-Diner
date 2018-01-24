def price_validation
  choice = ""
  loop do
    print "Your total is going to be $#{'%.2f' % @total_price} -- is that okay?' < y/n >: "
    choice = gets.chomp.downcase

    if choice == "y" || choice == "yes"
      choice = "y"
      break
    elsif choice == "n" || choice == "no"
      puts "\n'Alright, that's okay, let's choose again ...'"
      choice = "n"
      break
    else
      puts "\n'I didn't understand that ...'"
    end
  end
  choice
end

def entree_validation selection
  validated = false
  if @menu_selection == "b"
    if @breakfast_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if @lunch_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if @dinner_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def side1_validation selection
  validated = false
  if @menu_selection == "b"
    if @breakfast_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if @lunch_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if @dinner_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def side2_validation selection
  validated = false
  if @menu_selection == "b"
    if selection == @side_choice1
      validated = false
    elsif @breakfast_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if selection == @side_choice1
      validated = false
    elsif @lunch_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if selection == @side_choice1
      validated = false
    elsif @dinner_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def drink_validation selection
  validated = false
  if @drinks_nested.has_key?(selection) == true
    validated = true
  else
    validated = false
  end
  validated
end