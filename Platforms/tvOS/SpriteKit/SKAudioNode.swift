
@available(tvOS 9.0, *)
class SKAudioNode : SKNode, NSCoding {
  convenience init(fileNamed name: String)
  convenience init(URL url: NSURL)
  var autoplayLooped: Bool
  var positional: Bool
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func stereoPanTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func stereoPanBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
}
