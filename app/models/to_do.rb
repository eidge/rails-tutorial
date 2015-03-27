class ToDo < ActiveRecord::Base
  validates :title, presence: true
end
