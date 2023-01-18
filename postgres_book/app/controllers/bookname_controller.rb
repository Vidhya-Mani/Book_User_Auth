require 'bcrypt'
class BooknameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        render html: " Search the book by name of the Book"
    end

    def create 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 

            b = Bookstock.find_by('bookName': params[:bookName])
            render json: b 
        else
            render json: "Not authorised to search books by book name!" 
        end

    end
end
