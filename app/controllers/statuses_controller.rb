class StatusesController < ApplicationController

  before_filter :set_email_address, only: [:create, :show]

  def show
    if @email_address.present?
      @result = EmailVerifier.check(@email_address) rescue false
    end
  end

  def new
  end

  def create
    redirect_to status_url("check", :e => @email_address)
  end

  private
  def set_email_address
    @email_address = params[:email_address]
    @email_address ||= params[:e]
  end
end
