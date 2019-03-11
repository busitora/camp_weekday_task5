class FortunetellingsController < ApplicationController
  include FortunetellingsHelper, Common
  before_action :set_date, only: [:show]
  
  def show
  
    if @date
      @year = @date[0,4]
      @month = @date[4,2]
      @day = @date[6,2]
      @constellation = constellation(@month, @day.to_i)
      @age = (Date.today.strftime("%Y%m%d").to_i - params[:date].to_i) / 10000
      @fortune = %w(大吉 中吉 吉 小吉 凶 大凶).sample
    end
  end

  private
    def set_date
      @date = params[:date] if valid_birthday?(params[:date])
    end
end