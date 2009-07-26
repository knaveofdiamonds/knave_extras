class <%= class_name %> < ActiveRecord::Base
<% unless options[:skip_timestamps] -%>
  attr_protected :updated_at, :created_at
  attr_readonly  :created_at

<% end -%>
  # Relationships
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %>
<% end -%>

  # Validations
  validates_presence_of <%= attributes.map {|a| ":" + a.name }.join(", ") %>
<% unless numeric_attributes.empty? -%>
  validates_numericality_of <%= numeric_attributes.map {|a| ":" + a.name }.join(", ") %>
<% end -%>
end
