def determine_price
  loop do
    @total_price = 0;
    if @menu_selection == "b"
      total = @breakfast_nested["entree"][@entree_choice].values + @breakfast_nested["sides"][@side_choice1].values + @breakfast_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    elsif @menu_selection == "l"
      total = @lunch_nested["entree"][@entree_choice].values + @lunch_nested["sides"][@side_choice1].values + @lunch_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    else
      total = @dinner_nested["entree"][@entree_choice].values + @dinner_nested["sides"][@side_choice1].values + @dinner_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    end
    
    # Run the price_validation method
    if price_validation == "y"
      break
    else
      meal_selection
    end
  end
end
