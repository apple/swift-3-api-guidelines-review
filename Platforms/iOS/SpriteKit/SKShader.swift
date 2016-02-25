
@available(iOS 8.0, *)
class SKShader : NSObject, NSCopying, NSCoding {
  init(source source: String)
  init(source source: String, uniforms uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(_ uniform: SKUniform)
  func uniformNamed(_ name: String) -> SKUniform?
  func removeUniformNamed(_ name: String)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
