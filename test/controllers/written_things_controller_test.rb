require 'test_helper'

class WrittenThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @written_thing = written_things(:one)
  end

  test "should get index" do
    get written_things_url, as: :json
    assert_response :success
  end

  test "should create written_thing" do
    assert_difference('WrittenThing.count') do
      post written_things_url, params: { written_thing: { description: @written_thing.description } }, as: :json
    end

    assert_response 201
  end

  test "should show written_thing" do
    get written_thing_url(@written_thing), as: :json
    assert_response :success
  end

  test "should update written_thing" do
    patch written_thing_url(@written_thing), params: { written_thing: { description: @written_thing.description } }, as: :json
    assert_response 200
  end

  test "should destroy written_thing" do
    assert_difference('WrittenThing.count', -1) do
      delete written_thing_url(@written_thing), as: :json
    end

    assert_response 204
  end
end
