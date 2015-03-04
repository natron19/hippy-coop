class Member < ActiveRecord::Base
  has_many :rooms
  has_many :purchases 
  
  validates :first_name, :last_name, presence: true 

  def full_name
    "#{first_name} #{last_name}"  
  end 

  def full_rent 
    rooms.sum(:rent)
  end 

  def rent_due
    purchases = self.purchases.sum(:cost)
    full_rent - purchases
  end 

end 