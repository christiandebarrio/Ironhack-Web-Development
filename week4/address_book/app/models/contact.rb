class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  
  def self.show
    all.order('name ASC')
  end
end
