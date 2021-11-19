module UsersHelper

  def find_post_for_comment(id)
    Post.find(id)
  end

  def avatar_for(id)
    user = User.find(id).avatar
    if user.attached?
      user
    else
      "avatar_placeholder.png"
    end
  end
  
  def new_user
    User.new
  end 
  
end
