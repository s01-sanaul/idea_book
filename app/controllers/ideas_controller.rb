class IdeasController < ApplicationController
  def show
    @idea = Idea.find_by(id: params["id"])
    if @idea == nil
      redirect_to "/error"
    end
  end
  
  def index
    @ideas = Idea.all
  end
  
  def edit
    @idea = Idea.find_by(id: params["id"])
  end
  
  def edit_idea
    @idea = Idea.find_by(id: params["id"])
    if params["log"] != ""
      @idea.log = params["log"]
    end
    if @idea.save
      redirect_to "/idea/#{ @idea.id }"
    else
      redirect_to "/idea/#{ @idea.id }/edit"
    end
  end
  
  def new
  end
  
  def create
    @idea = Idea.new
    @idea.log = params["log"]
    if @idea.save
      redirect_to "/idea/#{ @idea.id }"
    else 
      render "/new"
    end
  end
  
  def destroy
    @idea = Idea.find_by(id: params["id"])
    @idea.destroy
    redirect_to "/ideas"
  end
  
  def error 
    @idea = Idea.find_by(id: params["id"])
  end
end
    