class LineSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable, :votes

  def editable
    scope == object.user
  end
end
