class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
# Method to convert the input and or output array to string with space seperator to be placed back to input box.



def rpnout 
  @input1 = params[:search_string]
#Begin catches all errors like zero division Type Error and nil cant be coerced into a float

begin
  #Call the gem RpnCalculator and evaluate @input from form
    
    @result = RpnCalculator.evaluate(@input1)
    #Rounds to 3 decimal places up or down from 5
    @result.map!{|item| item.round(3) }

# Possible extension - instead of One error message make custom instructional error messages.

rescue => error
flash[:info] = "Apologies - Error Please Try Again"

      redirect_to root_url


end
end
end


