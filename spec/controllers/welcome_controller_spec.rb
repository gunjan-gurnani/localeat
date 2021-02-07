# frozen_string_literal: true

describe WelcomeController do
  describe 'GET #index' do
    let!(:business) { create :business, id: 1, name: 'Applaud' }
    let!(:location) { create :location, city: 'Ipswich', business_id: 1 }

    it 'displays all the eateries in Ipswich' do
      get :index, params: { q: { name_or_location_city_cont: 'Ipswich' } }
      expect(assigns(:businesses)[0].name).to eq(business.name)
    end
  end
end
