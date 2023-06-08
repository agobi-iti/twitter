class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :bio
      t.references :friends, foreign_key: true
      t.references :timeline, foreign_key: true
      t.references :posts, foreign_key: true

      t.timestamps
    end
  end
end
