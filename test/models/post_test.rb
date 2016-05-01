require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "title", content: "bla bla")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = "    "
    assert_not @post.valid?
  end

  test "title should not be too long" do
    @post.title = "a" * 256
    assert_not @post.valid?
  end

end
