class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def rpnout
    @input1 = params[:search_string]
    @result = RpnCalculator.evaluate(@input1)
    @result.map!{|item| item.round(3) }
end




end


