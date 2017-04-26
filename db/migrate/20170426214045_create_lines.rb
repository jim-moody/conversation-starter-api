class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.references :user, foreign_key: true
      t.text :text

      t.timestamps
    end
  end
end
