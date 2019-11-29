class Room

  attr_reader :room_number, :room_style

  def initialize(room_number, room_style)
    @room_number = room_number
    @room_style = room_style
  end
end
