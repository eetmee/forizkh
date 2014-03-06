class DestroyBs < Struct.new(:current_a_id)

  def perform
  	destroy_all_bs!(current_a_id)
  end

  private

    def destroy_all_bs!(current_a_id)
    	B.where('a1_id = :current_a_id OR a2_id = :current_a_id', current_a_id: current_a_id).destroy_all
    end
end