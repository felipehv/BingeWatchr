class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :name
      t.integer :year
      t.references :user, foreign_key: true
      t.references :tipo, foreign_key: true

      t.timestamps
    end
  end
end
