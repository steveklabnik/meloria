class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date_scheduled, :description
  has_one :customer
end
