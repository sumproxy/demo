class AddEndometriumEchostructureChangeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endometrium_echostructure_change_id, :integer
  end
end
