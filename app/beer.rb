class Beer
  def initialize(lat, long, name, link)
    @name = name
    @coordinate = CLLocationCoordinate2D.new
    @coordinate.latitude = lat
    @coordinate.longitude = long
    @url = NSURL.alloc.initWithString(link)
  end

  def title; @name; end
  def coordinate; @coordinate; end
  def url; @url; end

  All = [
    Beer.new(45.919855, 6.867860, 'Monkey-Bar', 'http://monkeychamonix.com/'),
    Beer.new(45.922242, 6.869455, 'Bard Up', 'http:://bard_up.com')
  ]
end
