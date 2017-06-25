class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :name
      t.string :creator
      t.string :maturity
      t.integer :year
      t.string :image
      t.integer :user_id
      t.integer :tipo_id


      t.timestamps
    end
  end
end
