class CreateItemConcepts < ActiveRecord::Migration
  def change
    create_table :item_concepts do |t|
      t.references :item
      t.references :concept

      t.timestamps
    end
    add_index :item_concepts, :item_id
    add_index :item_concepts, :concept_id
  end
end
