class BonusDrink
  def self.total_count_for(amount)
    bonus = bonus(amount)
    amount + bonus + ( amount % 3 + bonus % 3 ) / 3
  end

  def self.bonus(amount)
    div = amount / 3
    div > 0 ? div + bonus(div) : 0
  end
end
