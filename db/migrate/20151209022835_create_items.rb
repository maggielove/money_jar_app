class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, :precision => 10, :scale => 2

      t.string :category
      t.timestamps
    end
  end
end
