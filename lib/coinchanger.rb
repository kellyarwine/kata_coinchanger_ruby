class CoinChanger
  def make_change(amount)
    change = []
    [25, 10, 5, 1].each do |coin|
      while amount >= coin
        change << coin
        amount -= coin
      end
    end
    change
  end
end