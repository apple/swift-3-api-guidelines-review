
@available(iOS 9.0, *)
class SCNAudioSource : Object, Copying, SecureCoding {
  convenience init?(fileNamed name: String)
  init?(url: URL)
  convenience init?(named fileName: String)
  var isPositional: Bool
  var volume: Float
  var rate: Float
  var reverbBlend: Float
  var loops: Bool
  var shouldStream: Bool
  func load()
  convenience init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class SCNAudioPlayer : Object {
  init(source: SCNAudioSource)
  var willStartPlayback: (() -> Void)?
  var didFinishPlayback: (() -> Void)?
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {
  @available(iOS 9.0, *)
  func addAudioPlayer(player: SCNAudioPlayer)
  @available(iOS 9.0, *)
  func removeAllAudioPlayers()
  @available(iOS 9.0, *)
  func removeAudioPlayer(player: SCNAudioPlayer)
  @available(iOS 9.0, *)
  var audioPlayers: [SCNAudioPlayer] { get }
}
