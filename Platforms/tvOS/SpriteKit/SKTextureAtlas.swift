
class SKTextureAtlas : NSObject, NSCoding {
  convenience init(named name: String)
  @available(tvOS 8.0, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  @available(tvOS 9.0, *)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (NSError?, [SKTextureAtlas]) -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTextureAtlas : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
