def menu_select()
  puts 'Please select from the menu (select numbers 1 to 4):'
  # print '> '
  user_selection = ''

  while user_selection != '4' && user_selection != '4.'&& user_selection != 'exit'
  print '> '
  user_selection = gets.strip.downcase
    if user_selection == '1' || user_selection == '1.'
      puts 'create'
    elsif user_selection == '2' || user_selection == '2.'
      puts 'display'
    elsif user_selection == '3' || user_selection == '3.'
      puts 'random'
    elsif user_selection == '4' || user_selection == '4.' || user_selection == 'exit'
      puts 'See you next time!'
    else
      puts 'Sorry, I don\'t understand. Please select from 1 to 4.'
    end 
  end
end