  def menu(food_controller) 
    user_selection = food_controller.menu
    case user_selection
      when 1 then food_controller.new
      when 2 then food_controller.index
      when 3 then exit
    else  
      food_controller.input_error
    end  
  end 