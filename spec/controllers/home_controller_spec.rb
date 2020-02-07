require 'rails_helper'

RSpec.describe HomeController do
  describe 'GET #index' do
    let(:user) { instance_double(User) }
    before { log_in(user) }
    it 'return status ok' do
      get :index
      expect(response.status).to be(200)
  end
end