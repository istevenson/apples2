class Game < ActiveRecord::Base
  has_many :players
  has_many :rounds
  before_create :generate_secret_id

  def generate_secret_id
    self.secret_id = SecureRandom.urlsafe_base64(5, false)
  end
end
