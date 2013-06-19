# -*- encoding: utf-8 -*-
require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient1 = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    @patient2 = {:dob => "2013-06-01", 
                :first_name => "Пётр",
                :last_name => "Иванов",
                :patronymic => "Сидорович",
                :phone => "20-20-20",
                :sex_id => 1
              }
    assert_difference('Patient.count') do
      post :create, patient: @patient2
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient1
    assert_response :success
  end

  test "should update patient" do
    put :update, id: @patient1, patient: { dob: @patient1.dob, 
                                          first_name: @patient1.first_name,
                                          last_name: @patient1.last_name,
                                          patronymic: @patient1.patronymic,
                                          phone: @patient1.phone
                                        }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient1
    end

    assert_redirected_to patients_path
  end
end
