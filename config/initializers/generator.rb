# frozen_string_literal: true

Rails.application.config.generators do |g|
  g.template_engine :slim
  g.orm :active_record, primary_key_type: :uuid
end
