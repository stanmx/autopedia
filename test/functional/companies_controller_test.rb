require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { about: @company.about, address: @company.address, category_id: @company.category_id, email: @company.email, location: @company.location, mision: @company.mision, name: @company.name, phone: @company.phone, schedule: @company.schedule, vision: @company.vision, warranty: @company.warranty, web: @company.web }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    put :update, id: @company, company: { about: @company.about, address: @company.address, category_id: @company.category_id, email: @company.email, location: @company.location, mision: @company.mision, name: @company.name, phone: @company.phone, schedule: @company.schedule, vision: @company.vision, warranty: @company.warranty, web: @company.web }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
