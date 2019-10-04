class LoginController < ApplicationController
  before_action :block_access, except: [:destroy]
    def create  
              @user = User.find_by(email: params[:login][:email].downcase)
              if @user && @user.authenticate(params[:login][:password])
                          sign_in(@user)
              redirect_to @user
      else
              render 'new'
      end
    end
end


