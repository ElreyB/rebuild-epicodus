class RemoveChapterColumnFromSections < ActiveRecord::Migration[5.0]
  def change
    remove_column :sections, :chapter
  end
end
