class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :company, :comments
end
