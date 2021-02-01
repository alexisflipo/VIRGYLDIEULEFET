class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @thumbnail_imgs = ThumbnailImg.all
  end

  def about

  end
end
