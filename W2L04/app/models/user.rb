class User < ActiveRecord::Base
  attr_accessible :reports, :user_id
end
