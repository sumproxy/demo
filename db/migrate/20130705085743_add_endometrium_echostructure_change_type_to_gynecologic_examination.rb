class AddEndometriumEchostructureChangeTypeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endometrium_echostructure_change_type_id, :integer
  end
end
