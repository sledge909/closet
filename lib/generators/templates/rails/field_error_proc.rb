# frozen_string_literal: true

# Overrides the default way how rails marks form fields with errors.
# In this version, it only adds the class 'error' to label and element

ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  if html_tag =~ /<(input|label|textarea|select)/
    html_field = Nokogiri::HTML::DocumentFragment.parse(html_tag)
    html_field.children.add_class 'is-invalid'
    html_field.to_s.html_safe
  else
    html_tag
  end
end
