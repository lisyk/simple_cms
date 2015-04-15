class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25 #long syntax
      t.string "last_name", :limit => 50 #short syntax
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40
      t.timestamps
    end
  end
    
  def down
      drop_table :users
  end
end
