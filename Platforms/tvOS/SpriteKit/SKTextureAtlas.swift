
class SKTextureAtlas : NSObject, NSCoding {
  convenience init(named name: String)
  @available(tvOS 8.0, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(_ name: String) -> SKTexture
  class func preloadTextureAtlases(_ textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  @available(tvOS 9.0, *)
  class func preloadTextureAtlasesNamed(_ atlasNames: [String], withCompletionHandler completionHandler: (NSError?, [SKTextureAtlas]) -> Void)
  func preload(completionHandler completionHandler: () -> Void)
  var textureNames: [String] { get }
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension SKTextureAtlas : CustomPlaygroundQuickLookable {
}
