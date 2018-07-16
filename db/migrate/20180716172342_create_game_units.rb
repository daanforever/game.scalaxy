class CreateGameUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :game_units do |t|
      t.references :account, foreign_key: { to_table: :game_accounts }, index: true

      t.timestamps
    end

  end
end
