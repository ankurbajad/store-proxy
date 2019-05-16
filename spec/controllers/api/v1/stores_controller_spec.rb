require "rails_helper"

RSpec.describe Api::V1::StoresController, :type => :controller do

  before :each do
    @store = Store.create(:store_type=> "static", :proxy=> true, :body=> "test",:app_id=> Faker::Number.number(10))
  end
  # Check Create Method Spec
  describe "post create" do
    it "has a 200 status code" do
      expect(@store.store_type).to eq("static")
    end

    it "has a 500 status code" do
      store = Store.create(:store_type=> "test", :proxy=> true, :body=> "test",:app_id=> Faker::Number.number(10))
      expect(store.id).to eq(nil)
    end
    # Check Show Method Spec
    describe 'GET show' do
      it 'assigns @store' do
        get :show, params: { id: @store.app_id }
        expect(response.status).to eq(200)
      end
    end
  end
end
