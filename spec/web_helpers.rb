def login
  users = [
    [ "m@p.com", 12345678, 12345678, "Mary", "Poppins" ]
  ]

  users.each do | email, password, password_confirmation, first_name, last_name |
    User.create( email: email, password: password, password_confirmation: password_confirmation, first_name: first_name, last_name: last_name, admin: false, active: true, approved: true, confirmed: true, avatar: nil)
    .avatar.attach(io: File.open(Rails.root.join("app/assets/images/#{first_name}.jpg")), filename: "#{first_name}.jpg")
  end

  visit root_path
  click_link 'Login'
  fill_in(:exampleInputEmail1, with: 'm@p.com')
  fill_in(:exampleInputPassword1, with: '12345678')
  click_button
end

def create_post_with_img
  visit root_path
  click_link 'New Post'
  fill_in(:post_content, with: 'This is a test post!')
  attach_file('post_image', Rails.root + 'spec/test_image.png')
  click_button
end

def create_comment
  click_link 'Add Comment'
  fill_in(:comment_content, with: 'This is a test comment')
  click_button('Comment')
end
