require 'test_helper'

class PregnancyTrimesterIExaminationsControllerTest < ActionController::TestCase
  setup do
    @pregnancy_trimester_i_examination = pregnancy_trimester_i_examinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pregnancy_trimester_i_examinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pregnancy_trimester_i_examination" do
    assert_difference('PregnancyTrimesterIExamination.count') do
      post :create, pregnancy_trimester_i_examination: { comments: @pregnancy_trimester_i_examination.comments, gestation_age_in_weeks: @pregnancy_trimester_i_examination.gestation_age_in_weeks, left_ovary_id: @pregnancy_trimester_i_examination.left_ovary_id, right_ovary_id: @pregnancy_trimester_i_examination.right_ovary_id, user_id: @pregnancy_trimester_i_examination.user_id, uterus_anteroposterior: @pregnancy_trimester_i_examination.uterus_anteroposterior, uterus_length: @pregnancy_trimester_i_examination.uterus_length, uterus_transverse_size: @pregnancy_trimester_i_examination.uterus_transverse_size }
    end

    assert_redirected_to pregnancy_trimester_i_examination_path(assigns(:pregnancy_trimester_i_examination))
  end

  test "should show pregnancy_trimester_i_examination" do
    get :show, id: @pregnancy_trimester_i_examination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pregnancy_trimester_i_examination
    assert_response :success
  end

  test "should update pregnancy_trimester_i_examination" do
    put :update, id: @pregnancy_trimester_i_examination, pregnancy_trimester_i_examination: { comments: @pregnancy_trimester_i_examination.comments, gestation_age_in_weeks: @pregnancy_trimester_i_examination.gestation_age_in_weeks, left_ovary_id: @pregnancy_trimester_i_examination.left_ovary_id, right_ovary_id: @pregnancy_trimester_i_examination.right_ovary_id, user_id: @pregnancy_trimester_i_examination.user_id, uterus_anteroposterior: @pregnancy_trimester_i_examination.uterus_anteroposterior, uterus_length: @pregnancy_trimester_i_examination.uterus_length, uterus_transverse_size: @pregnancy_trimester_i_examination.uterus_transverse_size }
    assert_redirected_to pregnancy_trimester_i_examination_path(assigns(:pregnancy_trimester_i_examination))
  end

  test "should destroy pregnancy_trimester_i_examination" do
    assert_difference('PregnancyTrimesterIExamination.count', -1) do
      delete :destroy, id: @pregnancy_trimester_i_examination
    end

    assert_redirected_to pregnancy_trimester_i_examinations_path
  end
end
