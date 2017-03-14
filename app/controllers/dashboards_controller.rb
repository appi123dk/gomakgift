class DashboardsController < ApplicationController
  def dashboard_1
  end

  def dashboard_2
  end

  def dashboard_3
    @extra_class = "sidebar-content"
  end

  def dashboard_4
    render :layout => "layout_2"
  end

  def dashboard_4_1
  end

  def dashboard_5
  end

  def piper
    require 'json'
    @project = Project.find(1)
    @dataset = @project.surveys
    @enterance = @dataset.where('age != ?', "000")
    @exit = @dataset.where('age = ?', "000")

    @female = @enterance.where('female = ?', true)
    @male = @enterance.where('female = ?', false)

    @hour_arr = []
    @female_count = []
    @male_count = []
    0.upto(23) do |hour|
      @hour_arr << hour.to_s + ":00f"
      @female_count << @female.where('hour(created_at) = ?', hour).count
      @male_count << @male.where('hour(created_at) = ?', hour).count
    end

    residence_arr = @exit.pluck("created_at").zip(@enterance.limit(@exit.count).pluck("created_at")).map{|x, y| x - y} 
    @avg_residence = residence_arr.inject{ |sum, el| sum + el }.to_f / residence_arr.size
    @mm, @ss = @avg_residence.divmod(60)
    
    # 해시를 이용한 데이터작업
    # point_hash = Hash.new
    # 0.upto(23) do |hour|
    #   @female_count = @female.where('hour(created_at) = ?', hour).count
    #   @male_count =  @male.where('hour(created_at) = ?', hour).count
    #   point_hash = {'hour' => '두세시', 'male' => @male_count, 'female' => @female_count}
    #   @enterance_graph << point_hash
    # end

  end

end
