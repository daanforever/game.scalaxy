class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.references :user, foreign_key: true
      t.text :code

      t.timestamps
    end
  end
end
