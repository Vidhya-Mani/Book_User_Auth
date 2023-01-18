class BookslogoutController < ApplicationController
    def index
        session.delete(:current_user_id)
        render json: "User Logged out successfully!! Bye!"
    end
end
