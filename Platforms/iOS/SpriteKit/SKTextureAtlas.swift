
class SKTextureAtlas : NSObject, NSCoding {
  convenience init(named name: String)
  @available(iOS 8.0, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (NSError?, [SKTextureAtlas]) -> Void)
  func preload(completionHandler completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTextureAtlas : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
