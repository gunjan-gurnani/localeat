# frozen_string_literal: true

describe BusinessesController do
  describe "GET new" do
    it "assigns a blank business and location" do
      get :new
      expect(assigns[:business].class).to eq Business
      expect(assigns[:location].class).to eq Location
    end

    it "assigns the business types" do
      stub_const("Business::BUSINESS_TYPES", %w[random stuff])
      get :new
      expect(assigns[:business_types]).to eq %w[random stuff]
    end
  end

  describe "POST create" do
    let(:input_params) do 
      { business: {
          name: "Awesome Cafe", business_type: "0",
          city: "London", street_address: "",
          description: "", opening_times: "{}" }
      }
    end

    it "creates a new business and location" do
      post :create, params: input_params
      expect(Business.last.name).to eq input_params[:business][:name]
    end

    context "successfully created" do
      it "redirects to home page and displays success flash message" do
        post :create, params: input_params
        expect(response).to redirect_to root_path
        expect(flash[:success]). to eq "Thank you for your submission!"
      end
    end

    context "unsuccessful creation" do
      let(:business) { double :business }
      let(:location) { double :location }
      let(:fake_id) { double :fake_id }
      let(:missing_params) do 
        { business: {
            name: "", business_type: "0",
            city: "", street_address: "",
            description: "", opening_times: "{}" }
        }
      end

      before do
        allow(Business).to receive(:new).and_return business
        allow(Location).to receive(:new).and_return location
        allow(business).to receive(:save).and_return false
        allow(location).to receive(:save).and_return false
        allow(business).to receive(:id).and_return fake_id
      end

      it "redirects to home page and displays error flash message" do
        post :create, params: missing_params
        expect(response).to redirect_to root_path
        expect(flash[:danger]). to eq "Sorry! We coudn't save your suggestion, try again later."
      end
    end
  end
end
