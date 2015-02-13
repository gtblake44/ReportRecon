class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :link_to_file
      t.references :section, index: true

      t.timestamps
    end
  end
end
