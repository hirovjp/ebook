require 'test_helper'

class LearnwordlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learnwordlist = learnwordlists(:one)
  end

  test "should get index" do
    get learnwordlists_url
    assert_response :success
  end

  test "should get new" do
    get new_learnwordlist_url
    assert_response :success
  end

  test "should create learnwordlist" do
    assert_difference('Learnwordlist.count') do
      post learnwordlists_url, params: { learnwordlist: { user_id: @learnwordlist.user_id, wordlist_id: @learnwordlist.wordlist_id } }
    end

    assert_redirected_to learnwordlist_url(Learnwordlist.last)
  end

  test "should show learnwordlist" do
    get learnwordlist_url(@learnwordlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_learnwordlist_url(@learnwordlist)
    assert_response :success
  end

  test "should update learnwordlist" do
    patch learnwordlist_url(@learnwordlist), params: { learnwordlist: { user_id: @learnwordlist.user_id, wordlist_id: @learnwordlist.wordlist_id } }
    assert_redirected_to learnwordlist_url(@learnwordlist)
  end

  test "should destroy learnwordlist" do
    assert_difference('Learnwordlist.count', -1) do
      delete learnwordlist_url(@learnwordlist)
    end

    assert_redirected_to learnwordlists_url
  end
end
