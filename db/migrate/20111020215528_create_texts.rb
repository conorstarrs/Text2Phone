class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.integer :user_id
      t.text :text
      t.date :created_date

      t.timestamps
    end
  end
end
