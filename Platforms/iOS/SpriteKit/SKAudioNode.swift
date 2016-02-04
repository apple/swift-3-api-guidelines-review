
@available(iOS 9.0, *)
class SKAudioNode : SKNode, NSCoding {
  init?(coder aDecoder: NSCoder)
  convenience init(fileNamed name: String)
  convenience init(URL url: NSURL)
  var autoplayLooped: Bool
  var positional: Bool
  convenience init()
}
extension SKAction {
  @available(iOS 9.0, *)
  class func stereoPanTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func stereoPanBy(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeReverbTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeReverbBy(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeObstructionTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeObstructionBy(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeOcclusionTo(v: Float, duration: NSTimeInterval) -> SKAction
  @available(iOS 9.0, *)
  class func changeOcclusionBy(v: Float, duration: NSTimeInterval) -> SKAction
}
