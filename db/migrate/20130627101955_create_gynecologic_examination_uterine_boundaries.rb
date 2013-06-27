# encoding: UTF-8
class CreateGynecologicExaminationUterineBoundaries < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_boundaries do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineBoundary.create(:value => "чёткие")
    GynecologicExamination::UterineBoundary.create(:value => "нечёткие")
  end
end
