class A < ActiveRecord::Base
  #has_many :bs, foreign_key: "a1", dependent: :destroy
  validates :name, presence: true
  
  after_create :create_all_bs!

  private
    def create_all_bs!
      Delayed::Job.enqueue CreateBs.new(id)
    end
end
