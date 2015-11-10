class Product < ActiveRecord::Base
  #can't be empty
  validates :title, :description, :image_url, :presence => true
  #price must greater or equal to 0.01, db only keep 2 degital,don't set 0.001
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  #title must be unique
  validates :title, :uniqueness => true
  #validate images,must be end with jpg,png,gif
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)\z}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }

  validates :title, :length => { minimum: 10 }
end
