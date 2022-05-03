require 'test_helper'

class MarketListsControllerTest < ActionDispatch::IntegrationTest
  test 'Should show your market list as title if access root' do
    get root_path
    assert_response :success
    assert_select 'h1', text: 'Suas listas de mercado'
  end

  test 'Should show your market list as title if access specific url' do
    get market_lists_path
    assert_response :success
    assert_select 'h1', text: 'Suas listas de mercado'
  end

  test 'Should show you dont have any market list if you dont have any list if access root' do
    get root_path
    assert_response :success
    assert_select 'p', text: 'Você ainda não possui nenhuma lista.'
  end

  test 'Should show you dont have any list if you dont have any list if access specific url' do
    get market_lists_path
    assert_response :success
    assert_select 'p', text: 'Você ainda não possui nenhuma lista.'
  end
end
