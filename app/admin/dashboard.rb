ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
        
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Photos" do
          ul do
            ThumbnailImg.last(5).map do |img|
              if img.photo.attached?
              li link_to(img.photo.filename.to_s, edit_admin_thumbnail_img_path(img.id))
              end
            end
          end
        end
      end

      columns do
        column do
          panel "Recent Videos" do
            ul do
              ThumbnailVideo.last(5).map do |video|
                if video.video.attached?
                li link_to(video.video.filename.to_s, edit_admin_thumbnail_video_path(video.id))
                end
              end
            end
          end
        end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end # content
end
end
