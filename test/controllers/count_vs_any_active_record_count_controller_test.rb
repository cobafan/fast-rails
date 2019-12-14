require 'test_helper'

class CountVsAnyActiveRecordCountControllerTest < ActionDispatch::IntegrationTest
  test 'index' do
    get count_vs_any_active_record_count_path
    assert_response :ok
  end
end
