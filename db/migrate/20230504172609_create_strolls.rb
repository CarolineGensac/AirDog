class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.datetime :rdv
      t.belongs_to :sitter_dog, index: true
      t.belongs_to :dog, index: true

      t.timestamps
    end
  end
end
