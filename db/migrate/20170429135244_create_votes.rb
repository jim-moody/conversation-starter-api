class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true
      t.references :line, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
