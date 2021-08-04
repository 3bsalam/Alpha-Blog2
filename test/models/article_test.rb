require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(title: "article title",description: "this is the description")
    @user = User.new(email:"mostafaaa@mostafa.com",password:"mostafa")
  end

  test "article should belong to user" do
    @article.save
    assert_not @article.valid?
  end

  test "articles created successfully" do
  @user.save
  @article.user_id = 1
  @article.save
  assert @article.valid?
  end


  test "article title cant be nil" do
  @user.save
  @article.user_id = 1
  @article.title = " "
  @article.save
  
  assert_not @article.valid?
  end

test "article description cant be short or nil" do
  @user.save
  @article.user_id = 1
  @article.description = "aa"
  @article.save
  
  assert_not @article.valid?
  end
end