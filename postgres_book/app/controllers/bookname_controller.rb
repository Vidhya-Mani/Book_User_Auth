class BooknameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        render html: " Search the book by name of the Book"
    end

    def create
        b = Bookstock.find_by('bookName': params[:bookName])
        render json: b
    end
end
