class CampaignsController < InheritedResources::Base
 
	def index
		@campaigns = Campaign.all

	end

	def show
		@campaign = Campaign.find(params[:id])
	end

  private

    def campaign_params
      params.require(:campaign).permit(:title, :content, :start_date, :end_date, :photo)
    end

end
