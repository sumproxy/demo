# encoding: UTF-8
class CreateUterineBoundaries < ActiveRecord::Migration
  def change
    create_table :uterine_boundaries do |t|
      t.string :value

      t.timestamps
    end
    UterineBoundary.create(:value => "четкие")
    UterineBoundary.create(:value => "нечеткие")
  end
end
