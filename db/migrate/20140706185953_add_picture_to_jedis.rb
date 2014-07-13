class AddPictureToJedis < ActiveRecord::Migration
  def change
    add_column :jedis, :picture, :string
  end
end
