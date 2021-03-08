class PhotosCategoriesController < ApplicationController
    def new
        
    end

    def show
        @photo_category = PhotoCategory.find(params[:id])
    end

    def create
        
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end

    private

    def photos_category_params
        params.require(:photo_category).permit(:name)
    end
end
