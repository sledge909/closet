# frozen_string_literal: true

# ClosetHelper
module ClosetHelper
  def errors_for(object)
    return unless object.errors.any?
    html = render 'application/notifications/danger', object: object
    if request.xhr?
      content_tag :div, html, class: 'alerts', hidden: true
    else
      content_for(:alerts) { html }
    end
  end

  def nav_link_to(text, icon, url_options = {}, options = {})
    fuzzy = options.delete(:fuzzy)
    classes = []
    classes << 'active' if current_path_in(url_for(url_options), fuzzy: fuzzy)
    options.deep_merge!(class: classes) { |_key, val1, val2| val1 + val2 }
    options[:title] = text
    options[:data] = { toggle: 'tooltip', placement: 'right' }
    content_tag :li do
      link_to url_options, options do
        fa_icon(icon) + content_tag(:span, text)
      end
    end
  end

  def current_path_in(paths = [], options = {})
    paths = [paths] if paths.is_a? String
    if options[:fuzzy]
      paths.each do |path|
        return true if request.path =~ /^#{path}/
      end
    elsif paths.include? request.path
      return true
    end
    false
  end

  def gravatar_image_url(user)
    hash = Digest::MD5.hexdigest(user.email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"
  end
end
