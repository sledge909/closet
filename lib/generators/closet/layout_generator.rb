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
    end

    def layout
      puts "source root #{source_paths}"
    end
  end
end
