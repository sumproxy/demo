class CreateGynecologicExaminationEndometriumEchostructureHyperechoicInclusions < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrium_echostructure_hyperechoic_inclusions do |t|
      t.integer :gynecologic_examination_id
      t.integer :size
      t.integer :localization_id

      t.timestamps
    end
  end
end
