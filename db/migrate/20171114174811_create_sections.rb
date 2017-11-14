class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.column :name, :string
      t.column :number, :integer
      t.column :chapter, :integer

      t.timestamps
    end
  end
end
