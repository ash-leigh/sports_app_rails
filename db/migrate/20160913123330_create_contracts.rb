class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :player, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true
      t.integer :value

      t.timestamps null: false
    end
  end
end
