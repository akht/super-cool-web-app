# frozen_string_literal: true

require 'application_system_test_case'

class TopicsTest < ApplicationSystemTestCase
  test 'create topic' do
    room = rooms(:room_1)
    visit "/rooms/#{room.id}/topics/new"
    within 'form[name=topic]' do
      fill_in 'topic[who]', with: 'メンターのkata'
      fill_in 'topic[name]', with: 'テストのイベント'
      click_button 'この質問を登録'
    end
    assert_text 'トピックを作成しました。'
  end
end
