json.array! @masteries do |mastery|
  json.partial! 'api/masteries/mastery', mastery: mastery
end
