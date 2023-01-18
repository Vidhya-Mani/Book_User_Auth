class ApplicationController < ActionController::Base
    def home 
        render html: "Welcome to Vidhya's Book API App"
    end
end
