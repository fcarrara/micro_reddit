require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(content: "this is my comment", user_id: 1, post_id: 1)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "content should be present" do
    @comment.content = "    "
    assert_not @comment.valid?
  end

end
