class ChangeReferencesItems < ActiveRecord::Migration
  def change
    add_reference :items, :user
  end
end
