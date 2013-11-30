class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.timestamp :date_scheduled
      t.text :description
      t.references :customer, index: true

      t.timestamps
    end
  end
end
