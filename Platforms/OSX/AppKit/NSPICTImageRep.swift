
class NSPICTImageRep : NSImageRep {
  init?(data pictData: Data)
  @NSCopying var pictRepresentation: Data { get }
  var boundingBox: Rect { get }
  init()
  init?(coder: Coder)
}
