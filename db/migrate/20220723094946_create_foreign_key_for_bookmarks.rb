class CreateForeignKeyForBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookmarks, :movie_id, index: true
    remove_reference :bookmarks, :list_id, index: true

    add_reference :bookmarks, :movie, index: true
    add_reference :bookmarks, :list, index: true
  end
end
