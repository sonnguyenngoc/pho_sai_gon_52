require 'test_helper'

class CustomerReservationsControllerTest < ActionController::TestCase
  setup do
    @customer_reservation = customer_reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_reservation" do
    assert_difference('CustomerReservation.count') do
      post :create, customer_reservation: { customer_email: @customer_reservation.customer_email, customer_name: @customer_reservation.customer_name, customer_phone: @customer_reservation.customer_phone, note: @customer_reservation.note, order_time: @customer_reservation.order_time }
    end

    assert_redirected_to customer_reservation_path(assigns(:customer_reservation))
  end

  test "should show customer_reservation" do
    get :show, id: @customer_reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_reservation
    assert_response :success
  end

  test "should update customer_reservation" do
    patch :update, id: @customer_reservation, customer_reservation: { customer_email: @customer_reservation.customer_email, customer_name: @customer_reservation.customer_name, customer_phone: @customer_reservation.customer_phone, note: @customer_reservation.note, order_time: @customer_reservation.order_time }
    assert_redirected_to customer_reservation_path(assigns(:customer_reservation))
  end

  test "should destroy customer_reservation" do
    assert_difference('CustomerReservation.count', -1) do
      delete :destroy, id: @customer_reservation
    end

    assert_redirected_to customer_reservations_path
  end
end
