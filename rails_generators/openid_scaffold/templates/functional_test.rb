require 'test_helper'

class <%= controller_class_name %>ControllerTest < ActionController::TestCase

  def setup
    super
    @<%= singular_name %> = <%= class_name %>.make
  end

  test "GET /users/:id should show user" do
    get :show, :id => @<%= singular_name %>.to_param
    assert_response :success
  end

  test "GET /users/:id/edit" do
    get :edit, :id => @<%= singular_name %>.to_param
    assert_not_nil assigns(:<%= singular_name %>)
    assert_response :success
  end

  test "PUT /users/:id should update user" do
    put :update, :id => @<%= singular_name %>.to_param, :user => { }
    assert_redirected_to <%= table_name %._path
  end
end
