class AddDefaultToLevel < ActiveRecord::Migration[6.0]
  def self.up
    change_table :users do |t|
      t.change :level, :string, default: "user"
    end
  end
  def self.down
    change_table :users do |t|
      t.change :level, :integer
    end
  end
end
