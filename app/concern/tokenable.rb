module Tokenable
  extend ActiveSupport::Concern

  included do
    before_create :generate_reef_tank_arduino_id
  end

  protected

  def generate_reef_tank_arduino_id
    self.reef_tank_arduino_id = loop do
      #random_reef_tank_arduino_id = SecureRandom.urlsafe_base64(nil, false)
       random_reef_tank_arduino_id = SecureRandom.hex(2)
      break random_reef_tank_arduino_id unless ReefTank.where(reef_tank_arduino_id: random_reef_tank_arduino_id).exists?
    end
  end
end