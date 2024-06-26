require "rails_helper"

RSpec.describe MetArtFacade, vcr: true, type: :facade do
  describe "#art_single" do
    it "returns a single artwork" do
      art = MetArtFacade.new.art_single(34545)

      expect(art).to be_a(MetArtPoro)
      expect(art.title).to be_a(String)
      expect(art.image_url).to be_a(String)
    end
  end
end
