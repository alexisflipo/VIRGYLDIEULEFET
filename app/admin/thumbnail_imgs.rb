ActiveAdmin.register ThumbnailImg do
  permit_params :photo
  form :html => { :multipart => true } do |f|
    f.inputs "Upload" do
      f.input :photo, as: :file, direct_upload: true
    end
    f.actions
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
  
end
