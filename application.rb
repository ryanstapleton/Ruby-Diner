require_relative "menus.rb"
require_relative "title.rb"
require_relative "menu_selection.rb"
require_relative "print_menu.rb"
require_relative "meal_selection.rb"
require_relative "data_validation.rb"
require_relative "determine_price.rb"
require_relative "meal_prep.rb"
require_relative "print_receipt.rb"

def awesome_sauce_diner
  title
  menu_selection
  print_menu
  meal_selection
  determine_price
  meal_prep
  print_receipt
end

# Run the program
awesome_sauce_diner