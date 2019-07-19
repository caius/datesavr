class CreateEventDates < ActiveRecord::Migration[6.0]
  def change
    create_table :event_dates, id: :uuid do |t|
      t.datetime :date
      t.references :event, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
