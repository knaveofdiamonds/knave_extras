require 'test_helper'

class <%= controller_class_name %>ControllerTest < ActionController::TestCase

  def setup
    super
    @<%= file_name %> = <%= class_name %>.make
  end

  test "GET /<%= table_name %>" do
    get :index
    assert_not_nil assigns(:<%= table_name %>)
    assert_response :success
  end

  test "GET /<%= table_name %>/new" do
    get :new
    assert_not_nil assigns(:<%= file_name %>)
    assert_response :success
  end

  test "GET /<%= table_name %>/:id should show <%= file_name %>" do
    get :show, :id => @<%= file_name %>.to_param
    assert_response :success
  end

  test "GET /<%= table_name %>/:id/edit" do
    get :edit, :id => @<%= file_name %>.to_param
    assert_not_nil assigns(:<%= file_name %>)
    assert_response :success
  end

  test "POST /<%= table_name %> should create <%= file_name %>" do
    assert_difference('<%= class_name %>.count') do
      post :create, :<%= file_name %> => { }
    end
    assert_redirected_to <%= table_name %>_path
  end

  test "PUT /<%= table_name %>/:id should update <%= file_name %>" do
    put :update, :id => @<%= file_name %>.to_param, :<%= file_name %> => { }
    assert_redirected_to <%= table_name %>_path
  end

  test "DELETE /<%= table_name %>/:id should remove <%= file_name %>" do
    assert_difference('<%= class_name %>.count', -1) do
      delete :destroy, :id => @<%= file_name %>.to_param
    end
    assert_redirected_to <%= table_name %>_path
  end
end
