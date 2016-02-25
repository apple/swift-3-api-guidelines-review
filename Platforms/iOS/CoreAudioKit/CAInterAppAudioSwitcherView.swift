
@available(iOS 8.0, *)
class CAInterAppAudioSwitcherView : UIView {
  var isShowingAppNames: Bool
  func setOutputAudioUnit(_ au: AudioUnit)
  func contentWidth() -> CGFloat
}
