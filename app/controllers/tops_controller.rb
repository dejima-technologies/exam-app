class TopsController < ApplicationController
  def new
  end

  def create
    @input = params[:special_string]
    if @input == "Dejima technologies"
      @message = "Congratulation!"
    else
      @message = "Try again."
    end
    render :new
  end
end
