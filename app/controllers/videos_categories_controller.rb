class VideosCategoriesController < ApplicationController
    def new
        
    end

    def show
        @video_category = VideoCategory.find[params[:id]]
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

    def videos_category_params
        params.require(:video_category).permit(:name)
    end
end
