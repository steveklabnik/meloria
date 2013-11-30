class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :date_on_waiting_list, :status, :local, :location, :credit, :want, :notes
end
