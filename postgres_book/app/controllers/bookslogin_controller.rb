require 'bcrypt'
class BooksloginController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index 
        render html: "Hello from Login Page of Book Stock management!"
    end
    def create 
        user_val = Bookuser.find_by('email': params[:email])
        if user_val.nil? 
            render json: "Email is not registered. Please create new useraccount!" 
        else 
            if (user_val.authenticate(params[:password]))
                session[:current_user_id] = user_val.id
              render json: "User exist! Login successfull!" 
            else 
                render json: "Wrong password!" 
            end
        end
        
    end
end
