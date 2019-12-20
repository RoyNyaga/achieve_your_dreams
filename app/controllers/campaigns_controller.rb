class CampaignsController < InheritedResources::Base

  private

    def campaign_params
      params.require(:campaign).permit(:title, :content, :start_date, :end_date, :photo)
    end

end
