class CreateTimelines < ActiveRecord::Migration[7.0]
  def change
    create_table :timelines do |t|
      t.references :posts, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
