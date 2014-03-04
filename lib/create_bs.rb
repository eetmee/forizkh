class CreateBs < Struct.new(:current_a_id)

def perform
  create_all_bs!(current_a_id)
end

private

  def create_all_bs!(current_a_id)
    A.find_each do |a|
      B.create!(a1_id: a.id, a2_id: current_a_id) unless current_a_id == a.id
    end
  end

  def create_b!(a_1_id, a_2_id)
    b = B.new
    b.a1_id, b.a2_id = a_1_id, a_2_id
    b.save!
  end

end