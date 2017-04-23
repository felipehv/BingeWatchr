class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :title, null: false, default: ""
      t.string :text, null: false, default: ""
      t.timestamps
    end
  end
end
