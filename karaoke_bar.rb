class Karaokebar

  attr_reader :name, :rooms, :till_balance, :entrance_fee

  def initialize(name, rooms, till_balance, entrance_fee)
    @name = name
    @rooms = rooms
    @till_balance = till_balance
    @entrance_fee = entrance_fee
  end

  def increase_till(amount)
    @till_balance += amount
  end

  def increase_till(amount)
    @till_balance += amount
  end



end
