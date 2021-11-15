module UsersHelper
  def avatar_for(id)
    user = User.find(id).avatar
    if user.attached?
      image_tag(user, height:"50px", class:"rounded-circle", alt:"avatar")
    else
      image_tag("avatar_placeholder.png", height:"50px", class:"rounded-circle", alt:"avatar")
    end
  end
end
