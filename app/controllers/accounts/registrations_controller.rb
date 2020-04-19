# frozen_string_literal: true

class Accounts::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  prepend_before_action :check_captcha, only: [:create]
  before_action :confirm_two_factor_authenticated, except: [:new, :create, :cancel]

  private
  def check_captcha
    unless verify_recaptcha
      self.resource = resource_class.new sign_up_params
      resource.validate # Look for any other validation errors besides reCAPTCHA
      set_minimum_password_length
      respond_with_navigational(resource) { render :new }
    end
  end

  protected

  def confirm_two_factor_authenticated
    return if is_fully_authenticated?

    flash[:error] = t('devise.errors.messages.user_not_authenticated')
    redirect_to user_two_factor_authentication_url
  end
end
