
class ABSearchElement : NSObject {
  /*not inherited*/ init!(forConjunction conjuction: ABSearchConjunction, children children: [AnyObject]!)
  func matchesRecord(_ record: ABRecord!) -> Bool
}
