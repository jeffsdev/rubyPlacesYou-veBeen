require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe('#places') do
    it("show the place entered by user") do
    test_place = Place.new("Portland, OR")
    expect(test_place.places()).to(eq("Portland, OR"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a task to the array of saved places") do
      test_place = Place.new("Seattle, WA")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("Boise, ID").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
