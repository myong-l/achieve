class AddCloumnToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :tel, :integer
  end
end
