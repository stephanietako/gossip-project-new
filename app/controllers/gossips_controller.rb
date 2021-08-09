class GossipsController < ApplicationController
def index
    @gossips = Gossip.all
end

# def index_post
#   @gossips = Gossip.new
# end

def show
  #landing page
    #@gossip = Gossip.find(params[:id])
end  

def new 
  @gossip = Gossip.new
end

def create
  @gossip = Gossip.new(gossip_params)
  if @gossip.save
    redirect_to @gossip
  else
    render :new
end
end
  
def edit 
  @gossip = Gossip.find(params[:id])
  if @gossip.edit(gossip_params)
    redirect_to new_gossip_path(@gossips)
  end
end

def update
  @gossip = Gossip.update(params[:id])
  if @gossip.update(gossip_params)
  redirect_to @gossip
  else
    render :edit
  end
end

def destroy
  @gossip = Gossip.find(params[:id])
  @gossip.destroy
  redirect_to @gossip
end

    private
    def gossip_params
    params.require(:gossip).permit(:title, :content, :body)
  end
end




