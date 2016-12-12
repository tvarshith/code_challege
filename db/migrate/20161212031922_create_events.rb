class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :organization, index: true, foreign_key: true, null: false
      t.string :action
      t.string :host_name

      t.timestamps null: false
    end
  end
end
