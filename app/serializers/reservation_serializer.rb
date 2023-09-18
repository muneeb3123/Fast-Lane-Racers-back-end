class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :city, :date

  belongs_to :user
  belongs_to :car
end
