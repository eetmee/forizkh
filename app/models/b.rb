class B < ActiveRecord::Base
  #belongs_to :a1, class_name: "A"
  #belongs_to :a2, class_name: "A"
  validates :a1_id, presence: true
  validates :a2_id, presence: true
end
