class VoucherMailer < ActionMailer::Base
  default from: "dejavu87@gmail.com"

  def send_voucher(voucher)
  	@voucher = voucher
  	mail(:to => voucher.to_email, :subject => "Coupon from your friend")
  end

  def use_voucher(voucher)
  	@voucher = voucher
  	mail(:to => voucher.from_mail, :subject => "Your friend has used a coupon you sent")
  end
  
end
