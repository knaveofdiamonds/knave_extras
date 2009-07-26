class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name %> do |t|
<% for attribute in attributes -%>
      t.<%= attribute.type %> :<%= attribute.name %>, :null => false
<% end -%>
<% unless options[:skip_timestamps] %>
      t.timestamps
<% end -%>
    end

<% attributes.select(&:reference?).each do |attribute| -%>
    add_index :<%= table_name %>, :<%= attribute.name + "_id" %>
<% end -%>
  end

  def self.down
    drop_table :<%= table_name %>
  end
end
