class CreateJedis < ActiveRecord::Migration
  def change
    create_table :jedis do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :location

      t.timestamps
    end
  end
end
