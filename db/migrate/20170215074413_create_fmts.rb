class CreateFmts < ActiveRecord::Migration[5.0]
  def change
    create_table :fmts do |t|
      t.string :name
      t.string :image
      t.string :shortinfo
      t.string :more_details

      t.timestamps
    end
  end
end
