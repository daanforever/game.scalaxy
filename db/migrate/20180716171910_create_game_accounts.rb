class CreateGameAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :game_accounts do |t|
      t.references :user, foreign_key: true
      t.integer :balance

      t.timestamps
    end
  end
end
