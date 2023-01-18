class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        render html: " Search the book by name of the Author"
    end

    def create
        a = Bookstock.where('bookAuthor': params[:bookAuthor])
        render json: a
    end
end
