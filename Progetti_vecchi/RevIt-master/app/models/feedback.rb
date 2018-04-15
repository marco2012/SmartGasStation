class Feedback < ActiveRecord::Base
  belongs_to :giver, class_name: 'User', dependent: :destroy
  belongs_to :receiver, class_name: 'User', dependent: :destroy
  #validate :value
  validates :receiver_id, presence: true
  validates :giver_id, presence: true
end
