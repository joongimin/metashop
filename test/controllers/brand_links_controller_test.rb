require 'test_helper'

class BrandLinksControllerTest < ActionController::TestCase
  setup do
    @brand_link = brand_links(:one)
  end

  test "should get index" do
    get :index, brand_id: @brand_link.brand_id
    assert_response :success
    assert_not_nil assigns(:brand_links)
  end

  test "should get new" do
    get :new, brand_id: @brand_link.brand_id
    assert_response :success
  end

  test "should create brand_link" do
    assert_difference('BrandLink.count') do
      post :create, brand_id: @brand_link.brand_id, brand_link: {name: @brand_link.name, url: @brand_link.url}
    end

    assert_redirected_to brand_brand_links_path(brand_id: @brand_link.brand_id)
  end

  test "should get edit" do
    get :edit, brand_id: @brand_link.brand_id, id: @brand_link
    assert_response :success
  end

  test "should update brand_link" do
    patch :update, brand_id: @brand_link.brand_id, id: @brand_link, brand_link: {name: @brand_link.name, url: @brand_link.url}
    assert_redirected_to edit_brand_brand_link_path(assigns(:brand_link), brand_id: @brand_link.brand_id)
  end

  test "should destroy brand_link" do
    assert_difference('BrandLink.count', -1) do
      delete :destroy, brand_id: @brand_link.brand_id, id: @brand_link
    end

    assert_redirected_to brand_brand_links_path(brand_id: @brand_link.brand_id)
  end
end
