class CreateDreams < ActiveRecord::Migration[5.2]
  def change
    create_table :dreams do |t|
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
