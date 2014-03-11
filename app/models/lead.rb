class Lead < ActiveRecord::Base
  validates :twitter_handle, presence: true, uniqueness: true, length: { minimum: 2 }, format: /@/

end
