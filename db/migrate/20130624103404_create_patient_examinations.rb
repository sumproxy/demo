class CreatePatientExaminations < ActiveRecord::Migration
  def change
    create_table :patient_examinations do |t|
      t.references :patient

      t.timestamps
    end
  end
end
