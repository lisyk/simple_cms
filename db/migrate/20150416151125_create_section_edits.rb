class CreateSectionEdits < ActiveRecord::Migration
  def change
    create_table :section_edits do |t|
        t.references :admin_user #work the same as t.integer :admin_user_id
        t.references :section    #work the same as t.integer :section_id
        t.string :summary
      t.timestamps
    end
      add_index :section_edits, ["admin_user_id", "section_id"]
  end
end
