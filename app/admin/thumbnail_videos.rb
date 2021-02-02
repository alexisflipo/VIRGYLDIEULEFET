ActiveAdmin.register ThumbnailVideo do
  permit_params :video
  config.filters = false

  index do
    actions
    column :name do |vid|
    vid.video.attachment.filename.to_s
    end
    column :id
    column :created_at
    column :updated_at
  end

  show do 
    attributes_table do
    row :video do |vid|
      vid.video.filename.to_s
    end
  end
  end
  form do |f|
    f.inputs "Uploads" do
      f.input :video, as: :file, direct_upload: true
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

