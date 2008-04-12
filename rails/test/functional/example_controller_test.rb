require 'test_helper'

class ExampleControllerTest < ActionController::TestCase
  def test_render_simple_action
    get :index
    
    assert_response :success
  end
end
