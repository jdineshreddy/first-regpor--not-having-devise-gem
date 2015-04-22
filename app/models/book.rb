class Book < ActiveRecord::Base

  has_one :image
  has_one :author
  belongs_to :author

  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :author


  validates :name,presence: true
  validates :published_by, presence: true
  validates :price,numericality: true


  def self.search(query)
    if query
      where('name LIKE  ? ', "%#{query}%")
    else
      all
    end

  end

  # another way of defining class methods
=begin
  class << self
    def search(query)
      if query
        where('name LIKE  ? ', "%#{query}%")
      else
        all
      end
    end
  end
=end


end
