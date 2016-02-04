
@available(watchOS 2.0, *)
class WKInterfaceMovie : WKInterfaceObject {
  func setMovieURL(URL: URL)
  func setVideoGravity(videoGravity: WKVideoGravity)
  func setLoops(loops: Bool)
  func setPosterImage(posterImage: WKImage?)
}
