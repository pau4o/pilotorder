ActionMailer::Base.smtp_settings = YAML.load_file(Rails.root.join('config', 'mailers.yml'))[Rails.env].to_options
