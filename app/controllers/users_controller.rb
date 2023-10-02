class UsersController < ApplicationController
  def index
    @users = User.all.order({:username => :asc})
    render({ :template => "user_templates/index"})
  end

  def show
    username = params.fetch("username")

    matching_users = User.where({ :username => username})

    @the_user = matching_users.at(0)
    render({ :template => "user_templates/show"})
  end

  def create
    new_user = User.new

    new_user.username = params.fetch("the_username")

    new_user.save

    redirect_to("/users/#{new_user.username}")
  end

  def update
    user_id = params.fetch("user_id")

    matching_users = User.where({ :id => user_id})

    the_user = matching_users.at(0)

    the_user.username = params.fetch("the_user")

    the_user.save

    redirect_to("/users/#{the_user.username}")
  end
end
