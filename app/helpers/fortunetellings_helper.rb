module FortunetellingsHelper
  
  def valid_birthday?(date)
    begin
    date.length == 8 &&
    Time.new(date[0,4], date[4,2], date[6,2]).strftime('%Y%m%d') <= Time.now.strftime('%Y%m%d')
    rescue
      false
    end
  end

  def birthday?(date)
    date[4,4] == Time.now.strftime('%m%d')
  end
end