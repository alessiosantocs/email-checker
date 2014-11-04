class StatusController < ApplicationController
  def index
    @result = EmailVerifier.check(params[:email]) if params[:email]
  end
end
