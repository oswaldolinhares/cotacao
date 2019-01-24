require 'test_helper'

class NewspriceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsprice_index_url
    assert_response :success
  end

end
