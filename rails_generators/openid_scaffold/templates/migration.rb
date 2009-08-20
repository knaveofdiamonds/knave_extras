class <%= migration_name %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name %> do |t|
      t.string :name, :limit => 80
      t.string :email, :limit => 100
      t.string :openid_identifier
      t.datetime :current_login_at
    
      t.timestamps
    end

    add_index :<%= table_name %>, :openid_identifier
  end

  def self.down
    drop_table :<%= table_name %>
  end
end
