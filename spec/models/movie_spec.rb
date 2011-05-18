require 'spec_helper'

describe Movie do
  it "should hide minutes for times ending with 00" do
    movie = Movie.new
    movie.update_attribute(:showtime_date, Date.parse("October 10, 2007"))
    movie.update_attribute(:showtime_time, Time.parse("2:00pm"))
    movie.showtime.should == "October 10, 2007 (2pm)"
  end

  it "should show minutes for times not ending with 00" do
    movie = Movie.new
    movie.update_attribute(:showtime_date, Date.parse("October 10, 2007"))
    movie.update_attribute(:showtime_time, "2:15pm")
    movie.showtime.should == "October 10, 2007 (2:15pm)"
  end

end
