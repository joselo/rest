module Api
  module V1

    class MeetingsController < ApiController

      def index
        @meetings = Meeting.all
        render json: @meetings
      end

      def create
        @meeting =  Meeting.new(meeting_params)

        if @meeting.save
          render status: :ok, json: @meeting
        else
          render status: :unprocessable_entity, json: @meeting.errors
        end        
      end

      private

      def meeting_params
        params.require(:meeting).permit([:name, :date])
      end

    end

  end
end