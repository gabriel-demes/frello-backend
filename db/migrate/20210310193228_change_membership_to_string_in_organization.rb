class ChangeMembershipToStringInOrganization < ActiveRecord::Migration[6.1]
  def change
    change_column :organizations, :memembership_code, :string
  end
end
