class CreateCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :calls do |t|
      t.string :title, null: false
      t.string :priority_level
      t.integer :anydesk_number
      t.text :description, null: false
      t.string :image_url
      t.boolean :call_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
