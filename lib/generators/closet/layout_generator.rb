# frozen_string_literal: true

require 'rails'

module Closet
  # Closet layout generator
  class LayoutGenerator < ::Rails::Generators::Base
    desc 'Setup layouts and related views for Closet'
    # source_paths << ::File.expand_path('../../templates', __FILE__)
    source_root ::File.expand_path('../../templates', __FILE__)

    def stylesheet
      remove_file 'app/assets/stylesheets/application.css'
      copy_file 'stylesheets/application.scss',
                'app/assets/stylesheets/application.scss'
      copy_file 'stylesheets/_variables.scss',
                'app/assets/stylesheets/_variables.scss'
      copy_file 'stylesheets/_base.scss',
                'app/assets/stylesheets/components/_base.scss'
    end

    def javascript
      copy_file 'javascripts/application.js',
                'app/assets/javascripts/application.js'
      copy_file '.keep',
                'app/assets/javascripts/components/.keep'
      copy_file '.keep',
                'app/assets/javascripts/templates/.keep'
      copy_file 'javascripts/array.js.coffee',
                'app/assets/javascripts/prototypes/array.js.coffee'
    end

    def notifications
      copy_file 'haml/notifications/_danger.html.haml',
                'app/views/application/notifications/_danger.html.haml'
      copy_file 'haml/notifications/_flash.html.haml',
                'app/views/application/notifications/_flash.html.haml'
    end

    def partials
      copy_file 'haml/_alerts.html.haml',
                'app/views/application/_alerts.html.haml'
      copy_file 'haml/_default_content.html.haml',
                'app/views/application/_default_content.html.haml'
      copy_file 'haml/_form_errors.html.haml',
                'app/views/application/_form_errors.html.haml'
      copy_file 'haml/_head.html.haml',
                'app/views/application/_head.html.haml'
      copy_file 'haml/_navigation.html.haml',
                'app/views/application/_navigation.html.haml'
    end

    def layout
      copy_file 'haml/application.html.haml',
                'app/views/layouts/application.html.haml'
      copy_file 'haml/modal.html.haml',
                'app/views/layouts/modal.html.haml'
      copy_file 'haml/mailer.html.haml',
                'app/views/layouts/mailer.html.haml'
      copy_file 'haml/mailer.text.haml',
                'app/views/layouts/mailer.text.haml'
    end

    def rails
      copy_file 'rails/field_error_proc.rb',
                'config/initializers/field_error_proc.rb'
      copy_file 'rails/closet_helper.rb',
                'app/helpers/closet_helper.rb'
    end
  end
end
