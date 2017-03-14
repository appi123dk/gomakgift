class AddLikeToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :likes, :integer                      # 좋아요 수
  	add_column :projects, :reaches, :integer                    # 도달 수
  end
end
