require "test_helper"

class PizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pizzas_new_url
    assert_response :success
  end

  test "should get create" do
    get pizzas_create_url
    assert_response :success
  end

  test "should get show" do
    get pizzas_show_url
    assert_response :success
  end
end
