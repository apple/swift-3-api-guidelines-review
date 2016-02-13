
@available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
class SCNAudioPlayer : Object {
  init(source: SCNAudioSource)
  var willStartPlayback: (() -> Void)?
  var didFinishPlayback: (() -> Void)?
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {
  @available(OSX 10.11, *)
  func addAudioPlayer(player: SCNAudioPlayer)
  @available(OSX 10.11, *)
  func removeAllAudioPlayers()
  @available(OSX 10.11, *)
  func removeAudioPlayer(player: SCNAudioPlayer)
  @available(OSX 10.11, *)
  var audioPlayers: [SCNAudioPlayer] { get }
}
