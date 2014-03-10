class Lead < ActiveRecord::Base
  validates :twitter_handle, presence: true


end
