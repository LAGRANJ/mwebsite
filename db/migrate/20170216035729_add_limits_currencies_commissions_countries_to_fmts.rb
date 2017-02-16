class AddLimitsCurrenciesCommissionsCountriesToFmts < ActiveRecord::Migration[5.0]
  def change
    add_column :fmts, :limits, :string
    add_column :fmts, :currencies, :string
    add_column :fmts, :commissions, :string
    add_column :fmts, :countries, :string
  end
end
