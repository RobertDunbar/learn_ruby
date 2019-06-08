class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    mins = (@seconds % 3600) / 60
    secs = @seconds - ((hours * 3600) + (mins * 60))

    hours = padded(hours)
    mins = padded(mins)
    secs = padded (secs)

    output = hours + ":" + mins + ":" + secs
  end

  def padded num
    array = num.to_s.chars
    padded_return = "00" if array[0] == "0"
    array[1] == nil ? padded_return = "0" + array[0] : padded_return = array.join
    padded_return
  end
end
