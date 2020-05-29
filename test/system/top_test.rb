# frozen_string_literal: true

require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'show index' do
    visit '/'
    assert_equal 'フィヨルドトーーク！', title
  end
end
