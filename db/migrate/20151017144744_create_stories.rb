class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :urlinput

      t.timestamps null: false
    end
  end
end
