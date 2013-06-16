class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :team
      t.string :location
      t.string :about

      t.timestamps
    end
  end
end
