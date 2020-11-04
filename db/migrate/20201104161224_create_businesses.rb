class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
