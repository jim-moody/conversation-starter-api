class VoteSerializer < ActiveModel::Serializer
  attributes :id, :value
  has_one :user
  has_one :line
end
