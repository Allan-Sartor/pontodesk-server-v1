class Api::V1::DashboardController < ApiController
  def index
    @call_count_of_day = Call.where('created_at::date = ?', Date.today).count

    @call_count_of_seven_days = Call.group_by_day(:created_at).count

    @call_count_of_thirty_days = Call.group_by_month(:created_at).count

    
    render json: { call_count_of_day: @call_count_of_day,
                   call_count_of_seven_days: @call_count_of_seven_days, 
                   call_count_of_thirty_days: @call_count_of_thirty_days
                  }, status: :ok
  end
end