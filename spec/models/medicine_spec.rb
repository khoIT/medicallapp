require 'rails_helper'

describe Medicine do
  it 'should contain many sessions' do
    medicine = FactoryGirl.create(:medicine)
    session1 = FactoryGirl.create(:session)
    session2 = FactoryGirl.create(:session)
    session3 = FactoryGirl.create(:session)
    medicine.sessions << [session1, session2, session3]
    expect(medicine.sessions.size).to eq(3)
  end

end
