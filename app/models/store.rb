class Store < ApplicationRecord
  validate :check_proxy
  validates_presence_of :store_type, :app_id

  #Generate Random App ID
  before_validation do
     next unless app_id.blank?
     begin
       self.app_id = SecureRandom.hex(5)
     end while self.class.where(app_id: app_id).any?
  end

  #Validates Store Types
  before_validation do
    unless ['static','lite','dynamic'].include? self.store_type
      errors.add(:proxy, message: "Should be 'static','lite','dynamic'")
    end
  end

  #Validate Proxy Value
  def check_proxy
    unless self.proxy == true
      errors.add(:proxy, message: "should be true")
    end
  end

end
