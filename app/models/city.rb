class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  
  def city_openings(start_date, end_date)
    Listing.all(conditions: ["created_at >= ? AND created_at <= ?", params[:start_date], params[:end_date]])
    end



end

