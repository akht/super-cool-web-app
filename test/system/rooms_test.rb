# frozen_string_literal: true

require 'application_system_test_case'

class RoomsTest < ApplicationSystemTestCase
  test 'show room' do
    visit "/rooms/#{rooms(:room_1).id}"
    assert_equal "「#{rooms(:room_1).name}」の質問収集箱 | フィヨルドトーーク！", title
  end

  test 'create room' do
    visit '/rooms/new'
    within 'form[name=room]' do
      fill_in 'room[name]', with: 'テストのイベント'
      click_button 'このイベント名で決定'
    end
    assert_text '質問収集箱完成！！'
  end

  test 'update room' do
    visit "/rooms/#{rooms(:room_1).id}/edit"
    within 'form[name=room]' do
      fill_in 'room[name]', with: 'テストのイベント2'
      click_button 'このイベント名で決定'
    end
    assert_text '質問収集箱更新完了！！'
  end
end
