class PagesController < ApplicationController
    
  before_filter :authenticate_user!, except: [:about, :contact, :browse, :intro, :streaming]
    
  def admin
    @video = Video.new
  end

  def about
  end

  def contact
  end
    
  def streaming
  end
    
  def intro
  end
    
  def news
  end
    
  def manage_videos
      @videos = Video.all
  end

  def browse
      if params[:q].present?
          @videos = @q.result.paginate(page: params[:page],:per_page => 20).order(created_at: :desc)
      else
          @videos = Video.paginate(:page => params[:page], :per_page => 20)
          @main   = @videos.limit(10).shuffle
          @category = Category.all
      end
      
  end
    
    
    
     
end
