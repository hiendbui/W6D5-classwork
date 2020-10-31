class CatsController < ApplicationController

    def index
        @cats = Cat.all

        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        
        render :show 
    end

    def new
        @new_cat = Cat.new
        render :new
    end

    def create
        @new_cat = Cat.new(cat_params)
        if @new_cat.save
            redirect_to cats_url
        else 
            render :new
        end
    end

    def edit 
        @cat = Cat.find(params[:id])
        
        render :edit 
    end

    private

    def cat_params
        params.require(:cat).permit(:birth_date,:color,:name,:sex,:description)
    end
end