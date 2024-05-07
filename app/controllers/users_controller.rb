class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })

    render({ :template => "/user_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username})
    @the_user = matching_usernames.first

      if @the_user == nil
        redirect_to("/404")
      else 
        render({ :template => "/user_templates/show"})
      end
  end

  def add
    input_username = params.fetch("input_username")

    new_user = User.new
    new_user.username = input_username

    new_user.save

    redirect_to("/users/#{new_user.username}")
  end

  def update
    the_id = params.fetch("modify_id")
    matching_users = User.where({ :id => the_id })
    the_user = matching_users.first

    input_username = params.fetch("input_username")

    the_user.username = input_username

    the_user.save

    redirect_to("/users/#{the_user.username}")
  end
end
