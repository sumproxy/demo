class AddEndometriumPhaseToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endometrium_phase_id, :integer
  end
end
