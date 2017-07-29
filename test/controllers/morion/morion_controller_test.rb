require 'test_helper'

module Morion
  class MorionControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
