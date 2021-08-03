# frozen_string_literal: true

RSpec.describe SignNowSDK::Resources::Document do
  describe ".find" do
    context "with a valid id" do
      let(:document) { described_class.find(123) }
      it "returns a document" do
        expect(document).to be_an_instance_of(described_class)
      end

      it "has the correct id" do
        expect(document.id).to eq(123)
      end
    end
  end
end
