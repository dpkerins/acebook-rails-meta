module UsersHelper
  def avatar_for(user)
    if user.avatar.attached?
      @user_avatar = image_tag(user.avatar, height:"50px", class:"rounded-circle", alt:"avatar")
    else
      @user_avatar = image_tag("avatar_placeholder.png", height:"50px", class:"rounded-circle", alt:"avatar")
    end
    return @user_avatar
  end
end
