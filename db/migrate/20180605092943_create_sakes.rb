class CreateSakes < ActiveRecord::Migration[5.1]
  def change
    create_table :sakes do |t|
      t.string :name
      t.string :company
      t.string :city
      t.string :sake_name
      t.string :kana_name

      t.timestamps
    end
  end
end
