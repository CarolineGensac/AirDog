class CreateSitterDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :sitter_dogs do |t|
      t.string :first_name

      t.timestamps
    end
  end
end