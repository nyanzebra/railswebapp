require 'test_helper'

class UpcDescriptionsControllerTest < ActionController::TestCase
  setup do
    @upc_description = upc_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upc_descriptions)
  end

  test "should show upc_description" do
    get :show, id: @upc_description
    assert_response :success
  end

  test "should update upc_description" do
    put :update, id: @upc_description, upc_description: { 
      :color => 'green'
    }
    assert_response 204
  end

  test "should destroy upc_description" do
    assert_difference('UpcDescription.count', -1) do
      delete :destroy, id: @upc_description
    end

    assert_response 204
  end
end
