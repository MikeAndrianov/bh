class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :status, default: 'available'

      t.timestamps
    end
  end
end
