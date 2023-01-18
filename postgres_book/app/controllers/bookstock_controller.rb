require 'bcrypt'
class BookstockController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 
            render json: Bookstock.all 
        else
           render json: "Not authorised to view books!" 
        end
    end
    def show 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 
            v = Bookstock.find(params[:id]) 
            render json: v
        else
            render json: "Not authorised to see individual books!" 
        end
    end 
    def create 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 

            v = !params[:bookName].empty? and !params[:bookAuthor].empty? and !params[:bookQuantity].nil?

            if (v)
            p=Bookstock.create(
                'bookName': params[:bookName],
                'bookAuthor': params[:bookAuthor],
                'bookQuantity': params[:bookQuantity]
            )
            puts p
            render json: "Book Added by registered user!" 
            end
        else
            render json: "Not authorised to create new books!" 
        end
    end
    def update 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 
            p = Bookstock.find(params[:id].to_i)
            p.update('bookName': params[:bookName],
                'bookAuthor': params[:bookAuthor],
                'bookQuantity': params[:bookQuantity]
            )
            render json: "Book info Updated" 
        else 
            render json: "Not authorised to update the books!"
        end
    end
    def destroy 
        reg_user = Bookstock.find_by_id(session[:current_user_id])
        if !reg_user.nil? 
            p = Bookstock.find(params[:id])
            p.destroy
            render json: "Book info Deleted" 
        else 
            render json: "Not authorised to delete the books!" 
        end
    end
end
