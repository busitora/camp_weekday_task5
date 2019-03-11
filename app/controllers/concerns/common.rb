module Common
  extend ActiveSupport::Concern

  def constellation(month, day)
    border_day = {
      "01": 19,  "02": 18,  "03": 20,  "04": 19,  "05": 20,  "06": 21,
      "07": 22,  "08": 22,  "09": 22,  "10": 23,  "11": 22,  "12": 21 
    }
    constellations = %w(山羊 水瓶 魚 牡羊 牡牛 双子 蟹座 獅子 乙女 天秤 蠍座 射手)
    index = month.to_i - 1
    if day >= border_day[month.to_sym]
      month == "12" ? index = 0 : index += 1
    end
    constellations[index]
  end
end