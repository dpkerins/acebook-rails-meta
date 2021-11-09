require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      content: "MyText",
      likes: 1,
      user: nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[likes]"

      assert_select "input[name=?]", "post[user_id]"
    end
  end
end
