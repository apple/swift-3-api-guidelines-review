
class SKTextureAtlas : Object, Coding {
  convenience init(named name: String)
  @available(tvOS 8.0, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  @available(tvOS 9.0, *)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (Error?, [SKTextureAtlas]) -> Void)
  func preload(completionHandler completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTextureAtlas : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
