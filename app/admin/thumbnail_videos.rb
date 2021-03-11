ActiveAdmin.register ThumbnailVideo do
  permit_params :video, :direction, :video_category_id
  config.filters = false

  index do
    actions
    column :name do |vid|
      if vid.video.present?
        vid.video.attachment.filename.to_s
      end
    end
    column :category do |vid|
      vid.video_category.name
    end
    column :created_at
    column :updated_at
  end

  show do 
    attributes_table do
    row :video do |vid|
      if vid.video.present?
      vid.video.filename.to_s
      end
    end
    row :category do |vid|
      vid.video_category.name
    end
  end
  end
  form do |f|
    f.inputs "Uploads" do
      f.input :video, as: :file, direct_upload: true
      f.input :direction
      f.input :video_category_id, include_blank: false, :as => :select, :collection => VideoCategory.all
    end
    f.actions
  end
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:photo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

