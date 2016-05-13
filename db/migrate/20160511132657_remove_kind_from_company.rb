class RemoveKindFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :kind, :string
    remove_column :companies, :registry_number, :string
  end
end
