class CreateCools < ActiveRecord::Migration[6.1]
  def change
    create_table :cools do |t|
      t.string :name

      t.timestamps
    end
  end
end
