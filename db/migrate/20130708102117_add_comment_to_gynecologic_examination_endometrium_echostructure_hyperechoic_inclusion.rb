class AddCommentToGynecologicExaminationEndometriumEchostructureHyperechoicInclusion < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_endometrium_echostructure_hyperechoic_inclusions, :comment, :text
  end
end
