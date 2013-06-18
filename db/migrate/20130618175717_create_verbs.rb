class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.string :infinitive
      t.string :past_tense
      t.string :past_participle

      t.timestamps
    end
  end
end
