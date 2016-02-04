
@available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 9.0, *)
class SCNAudioPlayer : NSObject {
  init(source: SCNAudioSource)
  var willStartPlayback: (() -> Void)?
  var didFinishPlayback: (() -> Void)?
  var audioSource: SCNAudioSource? { get }
}
extension SCNNode {
  @available(tvOS 9.0, *)
  func addAudioPlayer(player: SCNAudioPlayer)
  @available(tvOS 9.0, *)
  func removeAllAudioPlayers()
  @available(tvOS 9.0, *)
  func removeAudioPlayer(player: SCNAudioPlayer)
  @available(tvOS 9.0, *)
  var audioPlayers: [SCNAudioPlayer] { get }
}
