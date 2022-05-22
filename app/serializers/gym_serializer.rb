class GymSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :memberships
end
