class CreateBabyurls < ActiveRecord::Migration
  def change
    create_table :babyurls do |t|
      t.string :url
      t.string :count
      t.string :tag

      t.timestamps
    end
  end
end
