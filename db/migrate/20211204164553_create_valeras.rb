class CreateValeras < ActiveRecord::Migration[6.1]
  def change
    create_table :valeras do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.integer :health
      t.integer :mana
      t.integer :cheerfulness
      t.integer :fatigue
      t.integer :money

      t.timestamps
    end
  end
end
