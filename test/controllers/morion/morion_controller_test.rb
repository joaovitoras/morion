require 'test_helper'

module Morion
  class MorionControllerTest < ActionController::TestCase
    include Engine.routes.url_helpers

    setup do
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
