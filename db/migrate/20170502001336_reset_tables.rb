class ResetTables < ActiveRecord::Migration[5.0]
  def up
    execute 'DELETE FROM votes; DELETE from lines; DELETE from users;'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
