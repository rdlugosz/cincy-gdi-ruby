describe ResultsSortingService do

  it "sorts by distance" do
    Item = Struct.new(:distance, :updated_at, :sqft)

    r1 = Item.new(0.5, 1.day.ago, 550)
    r2 = Item.new(0.75, 90.days.ago, nil)
    r3 = Item.new(1.33, 30.days.ago, 1650)
    r4 = Item.new(0.45, 360.days.ago, 2050)

    unsorted = [r4, r3, r1, r2]

    expect(ResultsSortingService.sort_distance(unsorted)).to eq [r4, r1, r2, r3]
  end

  it "date and distance sort is in the correct order..." do
    Item = Struct.new(:distance, :updated_at, :sqft)

    r1 = Item.new(0.5, 1.day.ago, 550)
    r2 = Item.new(0.75, 90.days.ago, nil)
    r3 = Item.new(1.33, 30.days.ago, 1650)
    r4 = Item.new(0.45, 360.days.ago, 2050)

    unsorted = [r4, r3, r1, r2]

    expect(ResultsSortingService.sort_date_distance(unsorted)).to eq [r1, r2, r3, r4]
  end

end

