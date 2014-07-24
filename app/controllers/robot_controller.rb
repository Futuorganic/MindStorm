class RobotController < ApplicationController
  before_action :set_robot

  def index
    @proximity = @robot.proximity
  end

  def move
    @robot.charge_and_exscape
    redirect_to root_path
  end

  def left
    @robot.left
    redirect_to root_path
  end

  def right
    @robot.right
    redirect_to root_path
  end

  def forward
    @robot.forward
    redirect_to root_path
  end

  def backward
    @robot.backward
    redirect_to root_path
  end

  def slow_forward
    @robot.slow_forward
    redirect_to root_path
  end

  def slow_backward
    @robot.slow_backward
    redirect_to root_path
  end

  def run
    @robot.run
    redirect_to root_path
  end

  def proximity
    redirect_to root_path
  end

  def attack
    @robot.attack
    redirect_to root_path
  end

  private

  def set_robot
    @robot = Robot.new
    @robot.lock
  end
end
