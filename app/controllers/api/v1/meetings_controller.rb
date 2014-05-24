module Api
  module V1

    class MeetingsController < ApiController

      def index
        @meetings = Meeting.all
        render json: @meetings
      end

    end

  end
end