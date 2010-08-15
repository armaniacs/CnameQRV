require 'test_helper'

class CnameCheckControllerTest < ActionController::TestCase
  def test_ip
    get :ip,
    :ip => '200.17.202.1'
    require_response_body = "Archive serial:"
    assert_response :success
    assert_match require_response_body, @response.body
  end

  def test_ip_2
    get :ip,
    :i => '130.34.8.9'
    assert_response 404
  end

  def test_ip_3
    get :ip,
    :ip => 'vaio.araki.net'
    assert_response 404
  end
end
