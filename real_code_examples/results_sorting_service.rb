class ResultsSortingService

  def self.sort_date_distance(results)
    nearby_fresh = results.select { |r| r.updated_at > 180.days.ago && r.distance <= 3380.0 }
    nearby_fresh.sort_by! { |r| r.distance }

    remaining = results - nearby_fresh

    remaining.sort_by! do |r|
      [ReverseComparator.new(r.updated_at.strftime("%Y%m")),
       r.distance,
       ReverseComparator.new(r.sqft || 0)]
    end

    nearby_fresh + remaining
  end

  def self.sort_distance(results)
    results.sort_by { |r| r.distance }
  end
end
