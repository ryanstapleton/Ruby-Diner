def menu_selection
  puts "Waitress: 'Hi there!  ^_^\nWhat will you be having with us today?' \n\n"

  # Choice validation
  loop do
    puts "1. Breakfast\n2. Lunch\n3. Dinner\n\n"
    @menu_selection = gets.chomp.downcase

    case @menu_selection
      when "b","breakfast","1","1. breakfast","1.", "1. "
        @menu_selection = "b";
        puts "Waitress: 'Alright, breakfast!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      when "l","lunch","2","2. lunch","2.","2. "
        @menu_selection = "l";
        puts "Waitress: 'Lunch? Okay!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      when "d","dinner","3","3. dinner","3.","3. "
        @menu_selection = "d";
        puts "Waitress: 'Dinner it is!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      else
        puts "\n'Umm, we don't serve that here. Try again ...'\n\n"
    end
  end

  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
end