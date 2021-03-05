class CreateTaskcards < ActiveRecord::Migration[6.1]
  def change
    create_table :taskcards do |t|
      t.string :title
      t.string :deadline
      t.string :description
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
