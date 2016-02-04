
@available(OSX 10.8, *)
class NSTextAlternatives : NSObject {
  init(primaryString: String, alternativeStrings: [String])
  var primaryString: String { get }
  var alternativeStrings: [String] { get }
  func noteSelectedAlternativeString(alternativeString: String)
  init()
}
@available(OSX 10.8, *)
let NSTextAlternativesSelectedAlternativeStringNotification: String
