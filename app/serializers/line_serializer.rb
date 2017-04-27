class LineSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  def editable
    scope == object.user
  end
end
