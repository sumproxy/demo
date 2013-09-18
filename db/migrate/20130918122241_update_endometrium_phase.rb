# encoding: UTF-8
class UpdateEndometriumPhase < ActiveRecord::Migration
  def up
    new_value = {
      'I-й' => 'I-й фазе менструального цикла',
      'периовуляторной' => 'периовуляторной фазе менструального цикла',
      'II-й' => 'II-й фазе менструального цикла',
      'не соответствует' => 'не соответствует фазе менструального цикла',
      ' -- не задано --' => 'менопаузе'}
    GynecologicExamination::EndometriumPhase.all.each do |item|
      item.update_attribute :value, new_value[item.value]
    end
    GynecologicExamination::EndometriumPhase.create(value: '-- не задано --')
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
