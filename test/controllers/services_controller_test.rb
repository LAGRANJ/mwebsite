require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get currency_rates" do
    get services_currency_rates_url
    assert_response :success
  end

end
