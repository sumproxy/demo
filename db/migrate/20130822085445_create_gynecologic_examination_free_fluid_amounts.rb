# encoding: UTF-8
class CreateGynecologicExaminationFreeFluidAmounts < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_free_fluid_amounts do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::FreeFluidAmount.create(value: "незначительном")
    GynecologicExamination::FreeFluidAmount.create(value: "умеренном")
    GynecologicExamination::FreeFluidAmount.create(value: "большом")
    GynecologicExamination::FreeFluidAmount.create(value: "-- не задано --")    
  end
end
