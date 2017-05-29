class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :name
      t.string :creator
      t.string :maturity
      t.integer :year
      t.string :image
      t.references :user, foreign_key: true
      t.references :tipo, foreign_key: true

      t.timestamps
    end
  end
end
