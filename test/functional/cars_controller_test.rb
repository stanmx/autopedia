require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { city_id: @car.city_id, color: @car.color, contact_name: @car.contact_name, email: @car.email, interior: @car.interior, km_miles: @car.km_miles, model_id: @car.model_id, new: @car.new, phone: @car.phone, price: @car.price, radio: @car.radio, status: @car.status, transmission: @car.transmission, video: @car.video, year: @car.year }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    put :update, id: @car, car: { city_id: @car.city_id, color: @car.color, contact_name: @car.contact_name, email: @car.email, interior: @car.interior, km_miles: @car.km_miles, model_id: @car.model_id, new: @car.new, phone: @car.phone, price: @car.price, radio: @car.radio, status: @car.status, transmission: @car.transmission, video: @car.video, year: @car.year }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
