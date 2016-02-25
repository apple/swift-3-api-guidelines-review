
@available(tvOS 9.0, *)
class SKAudioNode : SKNode, NSCoding {
  convenience init(fileNamed name: String)
  convenience init(url url: NSURL)
  var autoplayLooped: Bool
  var isPositional: Bool
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func stereoPan(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func stereoPan(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverb(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverb(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstruction(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstruction(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusion(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusion(by v: Float, duration duration: NSTimeInterval) -> SKAction
}
