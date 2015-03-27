class ToDo < ActiveRecord::Base
  has_many :to_do_items

  validates :title, presence: true
end
