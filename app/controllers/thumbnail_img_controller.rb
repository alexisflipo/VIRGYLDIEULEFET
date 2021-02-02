class ThumbnailImgController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end

  def new
    
  end

  def update
    
  end

  def create

  end

  def destroy
    
  end

  private

  def img_params
    params.require(:thumbnail_img).permit(:photo, :file)
    
  end
end
