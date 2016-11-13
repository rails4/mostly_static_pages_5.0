require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_url
    assert_response :success
  end

  test 'should get help' do
    get help_url
    assert_response :success
  end

  test 'should get root page' do
    get root_url
    assert_response :success
  end
end
