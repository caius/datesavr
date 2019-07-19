class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events, id: :uuid do |t|
      t.string :name
      t.string :manage_token

      t.timestamps
    end

    add_index :events, :manage_token, unique: true
  end
end
