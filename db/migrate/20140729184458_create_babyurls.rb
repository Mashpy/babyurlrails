class CreateBabyurls < ActiveRecord::Migration
  def change
    create_table :babyurls do |t|
      t.string :ip
      t.string :url
      t.string :count
      t.string :slug

      t.timestamps
    end
  end
end
