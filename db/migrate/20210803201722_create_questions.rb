class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:name, :string)
      t.column(:question, :string)
      t.column(:survey_id, :integer)
    end
  end
end
