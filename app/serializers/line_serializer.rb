class LineSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable, :votes

  def editable
    scope == object.user
  end

  def votes
    object.votes.map do |vote|
      vote_hash = vote.attributes
      vote_hash['gender'] = vote.user[:gender]
      vote_hash
    end
  end
end
