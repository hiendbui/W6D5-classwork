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

    def update
        @cat = Cat.find(params[:id])

        if @cat.update(cat_params)
            redirect_to cat_url(@cat)
        else
            render :edit
        end
    end

    private

    def cat_params
        params.require(:cat).permit(:birth_date,:color,:name,:sex,:description)
    end
end