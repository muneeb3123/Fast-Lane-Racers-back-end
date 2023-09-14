class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :car_id, :city, :date

  belongs_to :user
  belongs_to :car
end
