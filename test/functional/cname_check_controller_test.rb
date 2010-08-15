require 'test_helper'

class CnameCheckControllerTest < ActionController::TestCase
  def test_ip
    get :ip,
    :ip => '200.17.202.1'

    require_response_body = "Archive serial:"

    assert_response :success
    assert_match require_response_body, @response.body
  end
end
