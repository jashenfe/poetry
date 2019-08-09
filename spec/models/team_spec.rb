require 'rails_helper'

RSpec.describe Team, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:coaches) }

    it { should have_many(:poets) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
