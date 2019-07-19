class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses, id: :uuid do |t|
      t.references :event, type: :uuid, foreign_key: true
      t.references :respondent, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
