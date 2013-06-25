require 'test_helper'

class GynecologicExaminationsControllerTest < ActionController::TestCase
  setup do
    @gynecologic_examination = gynecologic_examinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gynecologic_examinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gynecologic_examination" do
    assert_difference('GynecologicExamination.count') do
      post :create, gynecologic_examination: { endometrial_thickness: @gynecologic_examination.endometrial_thickness, menstruation_date: @gynecologic_examination.menstruation_date, menstruation_day: @gynecologic_examination.menstruation_day, uterine_anteroposterior: @gynecologic_examination.uterine_anteroposterior, uterine_length: @gynecologic_examination.uterine_length, uterine_width: @gynecologic_examination.uterine_width }
    end

    assert_redirected_to gynecologic_examination_path(assigns(:gynecologic_examination))
  end

  test "should show gynecologic_examination" do
    get :show, id: @gynecologic_examination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gynecologic_examination
    assert_response :success
  end

  test "should update gynecologic_examination" do
    put :update, id: @gynecologic_examination, gynecologic_examination: { endometrial_thickness: @gynecologic_examination.endometrial_thickness, menstruation_date: @gynecologic_examination.menstruation_date, menstruation_day: @gynecologic_examination.menstruation_day, uterine_anteroposterior: @gynecologic_examination.uterine_anteroposterior, uterine_length: @gynecologic_examination.uterine_length, uterine_width: @gynecologic_examination.uterine_width }
    assert_redirected_to gynecologic_examination_path(assigns(:gynecologic_examination))
  end

  test "should destroy gynecologic_examination" do
    assert_difference('GynecologicExamination.count', -1) do
      delete :destroy, id: @gynecologic_examination
    end

    assert_redirected_to gynecologic_examinations_path
  end
end
