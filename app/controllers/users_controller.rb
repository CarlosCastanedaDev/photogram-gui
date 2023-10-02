class UsersController < ApplicationController
  def index
    @users = User.all.order({:username => :asc})
    render({ :template => "user_templates/index"})
  end


end
