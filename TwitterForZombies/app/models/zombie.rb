class Zombie < ApplicationRecord::Base
  after_save :decomp_change_notification, if :decomp_change?
  
  private
  def decomp_change_notification
    ZombieMailer.decomp_change(self).deliver
  end
end
