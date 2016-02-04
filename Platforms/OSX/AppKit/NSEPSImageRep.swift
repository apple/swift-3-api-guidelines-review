
class NSEPSImageRep : NSImageRep {
  init?(data epsData: Data)
  @available(OSX, introduced=10.0, deprecated=10.10)
  func prepareGState()
  @NSCopying var epsRepresentation: Data { get }
  var boundingBox: Rect { get }
  init()
  init?(coder: Coder)
}
