module UsersHelper
  def safe_avatar_tag(user, size: [128,128], **opts)
    if user.image.attached?
      begin
        image_tag user.image.variant(resize_to_fill: size).processed, **opts
      rescue ActiveStorage::FileNotFoundError
        user.image.purge_later
        content_tag(:div, (user.name.to_s.first&.upcase || "U"), class: "u-show_avatar-fallback")
      end
    else
      content_tag(:div, (user.name.to_s.first&.upcase || "U"), class: "u-show_avatar-fallback")
    end
  end
end
