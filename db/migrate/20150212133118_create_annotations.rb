class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.references :document, index: true
      t.text :notes

      t.timestamps
    end
  end
end
