class CreateNoticia < ActiveRecord::Migration[5.0]
  def change
    create_table :noticia do |t|

      t.timestamps
    end
  end
end
