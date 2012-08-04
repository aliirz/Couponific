class Voucher < ActiveRecord::Base
  attr_accessible :description, :expires_on, :from_email, :from_name, :passcode, :title, :to_email, :to_name
end
