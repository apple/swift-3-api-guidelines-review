
@available(iOS 8.0, *)
class CAInterAppAudioTransportView : UIView {
  var enabled: Bool
  var playing: Bool { get }
  var recording: Bool { get }
  var connected: Bool { get }
  var labelColor: UIColor
  var currentTimeLabelFont: UIFont
  var rewindButtonColor: UIColor
  var playButtonColor: UIColor
  var pauseButtonColor: UIColor
  var recordButtonColor: UIColor
  func setOutputAudioUnit(au: AudioUnit)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
