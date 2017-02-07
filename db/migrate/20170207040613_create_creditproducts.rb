class CreateCreditproducts < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_types do |t|
      t.string :name
      t.string :description
      t.boolean :for_people
      t.boolean :for_companies
      t.boolean :group_allowed
      t.boolean :tranch_allowed
      t.string :add_info
      t.boolean :need_bail

      t.timestamps
    end
  end
end
