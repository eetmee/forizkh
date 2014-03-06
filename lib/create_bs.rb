class CreateBs < Struct.new(:current_a_id)

def perform
  create_all_bs!(current_a_id)
end

private

  def create_all_bs!(current_a_id)
    A.find_each do |a|
      B.create!('a1_id: current_a_id, a2_id: a.id AND a1_id: a.id, a2_id: current_a_id', current_a_id: current_a_id) unless current_a_id == a.id
    end
  end
end