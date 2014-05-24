module Api
  module V1

    class ApiController < ApplicationController

      before_filter :cors_set_access_control_headers

      private

      def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
        headers['Access-Control-Allow-Headers'] = '*, X-Requested-With, X-Prototype-Version, X-CSRF-Token, Content-Type'
        headers['Access-Control-Max-Age'] = "1728000"
      end

    end

  end
end