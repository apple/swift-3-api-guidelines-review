
@available(OSX 10.11, *)
class SCNAudioSource : NSObject, NSCopying, NSSecureCoding {
  convenience init?(fileNamed name: String)
  init?(URL url: NSURL)
  convenience init?(named fileName: String)
  var positional: Bool
  var volume: Float
  var rate: Float
  var reverbBlend: Float
  var loops: Bool
  var shouldStream: Bool
  func load()
  convenience init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
class SCNAudioPlayer : NSObject {
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
