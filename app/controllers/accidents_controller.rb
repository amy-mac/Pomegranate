class AccidentsController < ApplicationController

  def index
    @accidents = Accident.all

    respond_to do |format|
      format.json { render :json => @accidents }
    end

  end

  def create

    @user = current_user
    @new_accident = @user.accidents.create(params[:accident])

    if @new_accident.errors
      p @new_accident.errors
    end

    respond_to do |format|
      format.js
    end

  end

  def destroy

  end

end
