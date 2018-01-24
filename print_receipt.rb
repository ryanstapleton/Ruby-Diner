# Formatted output for the bill
def print_receipt
  total_formated = "#{'%.2f' % @total_price}"
  puts "Here is your bill. It's been a pleasure serving you, have a nice day!'  ^_^\n\n"
  sleep(2)
  puts "---------------------Bill----------------------\n\n"
  @order.each do |key, value|
    puts "  #{key.ljust(35)} $#{value}"
  end
  puts "  #{"------------------".ljust(35)}--------"
  puts "  #{"Total".ljust(35)} $#{total_formated}"
  puts "\n-----------------------------------------------"
end