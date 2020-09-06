class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :pages
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
