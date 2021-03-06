class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super
       if Rails.env.development?
           WelcomeMailer.welcome(@user).deliver
      else
      # Sends email to user when user is created.
           WelcomeMailer.welcome(@user).deliver
      end
  end

  def new
    super
  end

  def edit
    super
  end
end
