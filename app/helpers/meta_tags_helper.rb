# frozen_string_literal: true

module MetaTagsHelper
  def default_meta_tags
    {
      site: 'フィヨルドトーーク！',
      reverse: true,
      charset: 'utf-8',
      description: '参加者から質問を集めて大人数でもみんなが話せるイベントを開催',
      viewport: 'width=device-width, initial-scale=1.0'
    }
  end
end
