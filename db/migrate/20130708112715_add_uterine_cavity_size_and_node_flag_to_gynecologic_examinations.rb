class AddUterineCavitySizeAndNodeFlagToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_cavity_size, :float
    add_column :gynecologic_examinations, :is_uterine_cavity_node_present, :boolean
  end
end
