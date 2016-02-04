
@available(OSX 10.10, *)
class SKShader : NSObject, NSCopying, NSCoding {
  init(source: String)
  init(source: String, uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
