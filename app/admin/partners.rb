ActiveAdmin.register Partner do
  permit_params :photo, :name

  config.filters = false

  index do
    actions
    column :photo do |partner|
      image_tag partner.photo, style:"height: 100px"
    end
    column :name do |partner|
      partner.photo.attachment.filename.to_s
    end
    column :created_at
    column :updated_at
  end

  show do 
    attributes_table do
      row :photo do |partner|
        image_tag partner.photo, style:"height: 100px"
      end
      row :name do |partner|
        partner.photo.attachment.filename.to_s
      end
    end
  end
  form do |f|
    f.inputs "Uploads" do
      f.input :name
      f.input :photo, as: :file, direct_upload: true
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
