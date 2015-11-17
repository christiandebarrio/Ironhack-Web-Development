class Contact < ActiveRecord::Base
  def self.show
    all.order('name ASC')
  end
end
