
@available(watchOS 2.0, *)
class NSMappingModel : NSObject {
  /*not inherited*/ init?(fromBundles bundles: [NSBundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel: NSManagedObjectModel?)
  @available(watchOS 2.0, *)
  class func inferredMappingModelForSourceModel(sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOfURL url: NSURL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
  init()
}
struct __modelMappingFlags {
  var _isInUse: UInt32
  var _reservedModelMapping: UInt32
  init()
  init(_isInUse: UInt32, _reservedModelMapping: UInt32)
}
