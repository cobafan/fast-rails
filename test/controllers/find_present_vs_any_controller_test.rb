require 'test_helper'

class FindPresentVsAnyControllerTest < ActionDispatch::IntegrationTest
  test 'index' do
    get find_present_vs_any_path
    assert_response :ok
  end
end
