module UsersHelper

    def find_post_for_comment(id)
        Post.find(id).content
    end

  def avatar_for(id)
    user = User.find(id).avatar
    if user.attached?
      image_tag(user, class:"rounded-circle", alt:"avatar", style:"object-fit:cover; height:50px; width:50px;")
    else
      image_tag("avatar_placeholder.png", class:"rounded-circle", alt:"avatar", style:"object-fit:cover; height:50px; width:50px;")
    end
  end

end
