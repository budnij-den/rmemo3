class CreateMeters < ActiveRecord::Migration[5.1]
  def change
    create_table :meters do |t|
      t.float :value_total
      t.string :feature

      t.timestamps
    end
  end
end
