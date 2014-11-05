class StatusesController < ApplicationController
  def index
    @result = EmailVerifier.check(params[:email]) if params[:email]
  end

  def new
  end
end
