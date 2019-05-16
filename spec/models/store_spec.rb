require 'rails_helper'

RSpec.describe Store, type: :model do
  before :each do
    @store = Store.create(:store_type=> "static", :proxy=> true, :body=> "test",:app_id=> Faker::Number.number(10))
  end


  # CHECK VALIDATION PRESENCE CONDITION...................

  it 'is valid with valid attributes' do
    expect(@store).to be_valid
  end

  # CHECK Store Type Presence...................
  it 'is not valid without a store type' do
    @store.store_type = nil
    expect(@store).to_not be_valid
  end
end
