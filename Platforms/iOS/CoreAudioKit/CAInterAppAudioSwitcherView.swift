
@available(iOS 8.0, *)
class CAInterAppAudioSwitcherView : UIView {
  var showingAppNames: Bool
  func setOutputAudioUnit(au: AudioUnit)
  func contentWidth() -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
