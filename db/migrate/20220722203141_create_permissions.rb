class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.string :action, null: false
      t.string :subject_class, null: false
      t.string :subject, null: false
      t.string :subject_id, default: nil

      t.timestamps
    end
  end
end
