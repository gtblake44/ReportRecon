class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps
    end
  end
end
