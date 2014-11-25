class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all

  end



  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params[:person]
    end
end
