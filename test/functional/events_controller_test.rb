require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { equipment_return: @event.equipment_return, event_address_number: @event.event_address_number, event_contact_number: @event.event_contact_number, event_postcode: @event.event_postcode, event_street_name: @event.event_street_name, flower_description: @event.flower_description, quantity_of_flowers: @event.quantity_of_flowers, user_id: @event.user_id }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { equipment_return: @event.equipment_return, event_address_number: @event.event_address_number, event_contact_number: @event.event_contact_number, event_postcode: @event.event_postcode, event_street_name: @event.event_street_name, flower_description: @event.flower_description, quantity_of_flowers: @event.quantity_of_flowers, user_id: @event.user_id }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
