class AddFindingsAndRecommendationsToPregnancyTrimesterIExamination < ActiveRecord::Migration
  def change
    add_column :pregnancy_trimester_i_examinations, :findings_and_recommendations, :text
  end
end
