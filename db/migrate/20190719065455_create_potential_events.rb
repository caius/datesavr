class CreatePotentialEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :potential_events, id: :uuid do |t|
      t.string :name
      t.string :manage_token

      t.timestamps
    end

    add_index :potential_events, :manage_token, unique: true
  end
end
