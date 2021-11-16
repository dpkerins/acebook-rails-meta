module UsersHelper
    def find_post_for_comment(id)
        Post.find(id).content
    end
end
