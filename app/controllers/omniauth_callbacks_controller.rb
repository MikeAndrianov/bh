class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
    user = omniauth_login
    user.save

    user = sign_in user
    if user == true
      redirect_to :root
      return
    end

    if user && user.persisted?
      flash[:notice] = t('devise.omniauth_callbacks.success', :kind => t("sign.providers.#{user.provider}"))
    else
      flash[:error] = t('devise.omniauth_callbacks.failure')
    end
    redirect_to :root
  end

  private
  def omniauth_login
    user = User.find_by_provider_and_uid(from_omniauth[:provider], from_omniauth[:uid])

    return user || User.new(from_omniauth)
  end

  def from_omniauth
    @from_omniauth ||=
      request.env["omniauth.auth"].slice(:provider, :uid).to_h.symbolize_keys
  end
end
