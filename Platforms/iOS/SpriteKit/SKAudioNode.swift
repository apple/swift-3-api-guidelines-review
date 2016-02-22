
@available(iOS 9.0, *)
class SKAudioNode : SKNode, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed name: String)
  convenience init(url: NSURL)
  var autoplayLooped: Bool
  var isPositional: Bool
  convenience init()
}
extension SKAction {
  @available(iOS 9.0, *)
  class func stereoPan(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func stereoPan(by v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeReverb(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeReverb(by v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeObstruction(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeObstruction(by v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeOcclusion(to v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeOcclusion(by v: Float, duration: NSTimeInterval) -> SKAction
}
