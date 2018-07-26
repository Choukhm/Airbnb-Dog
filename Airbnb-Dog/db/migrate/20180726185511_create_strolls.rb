class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :dog
      t.belongs_to :dog_sitter

      t.timestamps
    end
  end
end
