class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :quiz_id, null: false
      t.integer :sort_order
      t.text :ask
      t.text :answer
      t.text :points
      t.integer :form_type, default: 0
      t.text :form_config

      # t.references :ask, polymorphic: true, index: true
      # t.references :answer_form, polymorphic: true, index: true

      t.timestamps
    end

    add_index :questions, :quiz_id

  end
end
