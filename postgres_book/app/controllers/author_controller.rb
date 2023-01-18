require 'bcrypt'
class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        render html: " Search the book by name of the Author"
    end

    def create 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 
            a = Bookstock.where('bookAuthor': params[:bookAuthor])
            render json: a 
        else
            render json: "Not authorised to search books by author name!" 
        end

    end
end
