require 'rails_helper'

RSpec.describe Session, :type => :model do
  it 'should contain many drugs' do
    session = FactoryGirl.create(:session)
    drug1 = FactoryGirl.create(:medicine)
    drug2 = FactoryGirl.create(:medicine, drug_name:"C")
    drug3 = FactoryGirl.create(:medicine, drug_name:"D")
    session.medicines << drug1
    session.medicines << drug2
    session.medicines << drug3
    expect(session.medicines.count).to eq(3)
  end

  it 'should return next drug in the same session' do
    medicine1 = FactoryGirl.create(:medicine)
    medicine2 = FactoryGirl.create(:medicine)
    medicine3 = FactoryGirl.create(:medicine)
    session = FactoryGirl.create(:session)
    session.medicines << [medicine1, medicine2, medicine3]
    expect(session.next_drug(medicine1)).to eq(medicine2)
  end

  it 'should return previous drug in the same session' do
    medicine1 = FactoryGirl.create(:medicine)
    medicine2 = FactoryGirl.create(:medicine)
    medicine3 = FactoryGirl.create(:medicine)
    session = FactoryGirl.create(:session)
    session.medicines << [medicine1, medicine2, medicine3]
    expect(session.first_element?(medicine1)).to eq(true)
  end
end
