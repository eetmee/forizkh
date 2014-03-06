class A < ActiveRecord::Base
  before_destroy :destroy_all_bs!
  validates :name, presence: true
  after_create :create_all_bs!

  private
    def create_all_bs!
      Delayed::Job.enqueue CreateBs.new(id)
    end

    def destroy_all_bs!
    	#binding.pry
    	Delayed::Job.enqueue DestroyBs.new(id)
    end
end
