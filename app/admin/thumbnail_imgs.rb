ActiveAdmin.register ThumbnailImg do
  permit_params :photo, :photo_category_id

  config.filters = false

  index do
    actions
    column :photo do |img|
      image_tag img.photo, style:"height: 100px"
    end
    column :name do |img|
      img.photo.attachment.filename.to_s
    end
    column :id
    column :created_at
    column :updated_at
  end

  show do 
    attributes_table do
    row :photo do |img|
      image_tag img.photo, style:"height: 100px"
    end
    row :name do |img|
      img.photo.attachment.filename.to_s
    end
    row :category do |img|
      img.photo_category.name
    end
  end
  end
  form do |f|
    f.inputs "Uploads" do
      f.input :photo, as: :file, direct_upload: true
      f.input :photo_category_id, include_blank: false,  :as => :select, :collection => PhotoCategory.all
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
