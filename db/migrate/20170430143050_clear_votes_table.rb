class ClearVotesTable < ActiveRecord::Migration[5.0]
  def up
    execute 'DELETE FROM votes;'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
