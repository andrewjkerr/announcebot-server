class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
