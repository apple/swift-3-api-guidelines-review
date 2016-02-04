
class AUPannerView : NSView {
  var audioUnit: AudioUnit { get }
  /*not inherited*/ init(audioUnit au: AudioUnit)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
