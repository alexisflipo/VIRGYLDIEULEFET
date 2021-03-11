ActiveAdmin.register VideoCategory do
  permit_params :name, :photo

  config.filters = false

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
  index do
    actions
    column :name do |category|
      category.name
    end
    column :created_at
    column :updated_at
  end

  show do 
    attributes_table do
    row :name do |category|
      category.name
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
end
