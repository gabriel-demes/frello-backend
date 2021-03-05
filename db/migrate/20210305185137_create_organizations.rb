class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :memembership_code

      t.timestamps
    end
  end
end
