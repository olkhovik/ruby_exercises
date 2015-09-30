class Train

  attr_accessor :num, :speed, :type, :car

  def initialize(num, type, car)
    @num = num
    @type = type.to_s
    @car = car
    @speed = 0
  end

  def current_speed
    puts @speed
  end

  def speed_accelerate
    @speed += 10 if @speed <= 100
  end

  def speed_slow
    @speed -= 10 if @speed > 0
  end

  def add_car(n)
    @n = n
    @car += 1 if @speed == 0 && @n == 1
    @car -= 1 if @speed == 0 && @car >= 1 && @n == -1
  end

  def car_list
    puts @car
  end
end

class Station

  attr_accessor :st_name

  def initialize(st_name)
    @st_name = st_name.to_s
    @trains_station = []
  end

  def arrive_train(train)
    @trains_station << train
  end

  def depart_train(train)
    @trains_station.delete(train)
  end

  def trains_list
    puts @trains_station
  end
end
