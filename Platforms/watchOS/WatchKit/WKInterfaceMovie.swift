
@available(watchOS 2.0, *)
class WKInterfaceMovie : WKInterfaceObject {
  func setMovieURL(URL: NSURL)
  func setVideoGravity(videoGravity: WKVideoGravity)
  func setLoops(loops: Bool)
  func setPosterImage(posterImage: WKImage?)
}
