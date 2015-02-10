class CreateFormfactors < ActiveRecord::Migration
  def change
    create_table :formfactors do |t|
      t.string :name
      t.string :permalink
      t.timestamps
    end

    add_column :shoppe_products, :formfactor_id, :integer
  end
end
