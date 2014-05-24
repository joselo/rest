class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :name, :date

  def date
    object.date.strftime("%F")
  end

end
