
@available(OSX 10.11, *)
class SKAudioNode : SKNode, NSCoding {
  convenience init(fileNamed name: String)
  convenience init(url url: NSURL)
  var autoplayLooped: Bool
  var isPositional: Bool
}
extension SKAction {
  @available(OSX 10.11, *)
  class func stereoPan(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func stereoPan(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverb(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverb(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstruction(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstruction(by v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusion(to v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusion(by v: Float, duration duration: NSTimeInterval) -> SKAction
}
