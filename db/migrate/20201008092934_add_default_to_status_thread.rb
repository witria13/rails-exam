class AddDefaultToStatusThread < ActiveRecord::Migration[6.0]
   def self.up
    change_table :forum_threads do |t|
      t.change :status, :string, default: "pending"
    end
  end
  def self.down
    change_table :forum_threads do |t|
      t.change :status
    end
  end
end
