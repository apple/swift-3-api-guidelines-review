
@available(tvOS 4.1, *)
class GKPlayer : NSObject {
  class func loadPlayersForIdentifiers(identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, NSError?) -> Void)?)
  var playerID: String? { get }
  @available(tvOS 6.0, *)
  var displayName: String? { get }
  var alias: String? { get }
  @available(tvOS 9.0, *)
  class func anonymousGuestPlayerWithIdentifier(guestIdentifier: String) -> Self
  @available(tvOS 9.0, *)
  var guestIdentifier: String? { get }
  init()
}
extension GKPlayer {
  @available(tvOS 5.0, *)
  func loadPhotoForSize(size: GKPhotoSize, withCompletionHandler completionHandler: ((UIImage?, NSError?) -> Void)?)
}
var GKPhotoSizeSmall: Int { get }
var GKPhotoSizeNormal: Int { get }
typealias GKPhotoSize = Int
let GKPlayerDidChangeNotificationName: String
extension GKPlayer {
}
