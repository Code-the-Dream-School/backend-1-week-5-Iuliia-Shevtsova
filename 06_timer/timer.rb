class Timer
  
  #should initialize to 0 seconds
  def seconds
    @seconds ||= 0
  end
  
  #should initialize seconds by user
  def seconds=(sec)
    @seconds = sec
  end

  # should display 0 seconds as 00:00:00
  def time_string
    seconds = @seconds
    seconds = Time.at(seconds).utc.strftime("%T")
  end

end
