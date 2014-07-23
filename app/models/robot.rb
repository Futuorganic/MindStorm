require 'open-uri'
class Robot

# Meta programmed version
# require 'active_support'
 # METHODS = [:lock, :forward, :backward, :slow_forward, :slow_backward, :left, :right, :run, :attack]

 # METHODS.each do |method|
 #    define_method(method) do
 #      open(@request_base+method.to_s)
 #    end
 #  end

  def initialize(user=2, port=1234)
    @request_base = "http://10.10.130.100:#{port}/#{user}/"
  end

  def hack
    user = open(@request_base+"lock").read
    replay = user.split(" ")
    unless user[0] == "OK"
      this_user = replay[-1]
      open(@request_base = "http://10.10.130.100:#{1234}/#{this_user.to_i}/")
      left
    end
  end

  def lock
    open(@request_base+"lock")
  end

  def forward
    open(@request_base+"forward")
  end

  def backward
    open(@request_base+"backward")
  end

  def slow_forward
    open(@request_base+"slow_forward")
  end

  def slow_backward
    open(@request_base+"slow_backward")
  end

  def left
    open(@request_base+"left")
  end

  def right
    open(@request_base+"right")
  end

  def run
    open(@request_base+"run")
  end

  def attack
    open(@request_base+"attack")
  end

  def proximity
    open("http://10.10.130.100:1234/proximity").read
  end

  def charge_and_exscape
    forward
    sleep(2)
    attack
    sleep(2)
    backward
  end

  def do_it
    lock
    charge_and_exscape
  end

end
