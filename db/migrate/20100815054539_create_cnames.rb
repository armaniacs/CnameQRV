class CreateCnames < ActiveRecord::Migration
  def self.up
    create_table :cnames do |t|
      t.column "ip", :text
      t.column "hostname", :text
      t.column "type", :text
      t.column "preference", :integer
      t.column "time", :timestamp
      t.column "alive", :boolean
      t.column "country", :text
      t.column "continent", :text
      t.column "checkpref", :integer
      t.column "tracefile", :text
      t.column "last_modified_time", :timestamp
      t.column "nouse", :boolean
      t.column "failreason", :text
      t.column "targetnet", :text
    end
  end

  def self.down
    drop_table :cnames
  end
end
