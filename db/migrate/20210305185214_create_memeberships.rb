class CreateMemeberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memeberships do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
