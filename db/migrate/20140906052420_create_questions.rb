class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :sentence
      t.belongs_to :company

      t.timestamps
    end
  end
end
