# frozen_string_literal: true

require 'rails'

module Closet
  # Closet layout generator
  class LayoutGenerator < ::Rails::Generators::Base
    desc 'Setup layouts and related views for Closet'
    source_paths << ::File.expand_path('../../templates', __FILE__)

    def layout
      puts "source root #{source_paths}"
    end
  end
end
