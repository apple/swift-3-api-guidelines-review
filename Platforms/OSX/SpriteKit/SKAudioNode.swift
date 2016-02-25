
@available(OSX 10.11, *)
class SKAudioNode : SKNode, NSCoding {
  convenience init(fileNamed name: String)
  convenience init(URL url: NSURL)
  var autoplayLooped: Bool
  var positional: Bool
}
extension SKAction {
  @available(OSX 10.11, *)
  class func stereoPanTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func stereoPanBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverbTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverbBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstructionTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstructionBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusionTo(_ v: Float, duration duration: NSTimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusionBy(_ v: Float, duration duration: NSTimeInterval) -> SKAction
}
