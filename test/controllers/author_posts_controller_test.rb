require 'test_helper'

class AuthorPostsControllerTest < ActionController::TestCase
  setup do
    @author_post = author_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_post" do
    assert_difference('AuthorPost.count') do
      post :create, author_post: { author_id: @author_post.author_id, post_id: @author_post.post_id }
    end

    assert_redirected_to author_post_path(assigns(:author_post))
  end

  test "should show author_post" do
    get :show, id: @author_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @author_post
    assert_response :success
  end

  test "should update author_post" do
    patch :update, id: @author_post, author_post: { author_id: @author_post.author_id, post_id: @author_post.post_id }
    assert_redirected_to author_post_path(assigns(:author_post))
  end

  test "should destroy author_post" do
    assert_difference('AuthorPost.count', -1) do
      delete :destroy, id: @author_post
    end

    assert_redirected_to author_posts_path
  end
end
