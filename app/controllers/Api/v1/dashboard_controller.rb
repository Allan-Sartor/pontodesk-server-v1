class Api::V1::DashboardController < ApiController
  def index
    @call_count_of_day = Call.where('created_at::date = ?', Date.today).count

    @call_count_of_seven_days = Call.group_by_week(:created_at).count

    @call_count_of_thirty_days = Call.group_by_week(:created_at).count

    render json: { call_count_of_seven_days: @call_count_of_seven_days, call_count_of_day: @call_count_of_day }, status: :ok
  end
end