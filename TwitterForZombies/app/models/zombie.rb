class Zombie < ApplicationRecord::Base
  after_save :decomp_change_notification, if :decomp_change?
  
  def as_json(options = nil)
    super(options || {include: :brain, except: [:created_at, :updated_at, :id]})
  end
  private
  def decomp_change_notification
    ZombieMailer.decomp_change(self).deliver
  end
end
