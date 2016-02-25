
typealias MDLVoxelIndex = vector_int4
struct MDLVoxelIndexExtent {
  var minimumExtent: MDLVoxelIndex
  var maximumExtent: MDLVoxelIndex
  init()
  init(minimumExtent minimumExtent: MDLVoxelIndex, maximumExtent maximumExtent: MDLVoxelIndex)
}
@available(OSX 10.11, *)
class MDLVoxelArray : NSObject {
  init(asset asset: MDLAsset, divisions divisions: Int32, interiorShells interiorShells: Int32, exteriorShells exteriorShells: Int32, patchRadius patchRadius: Float)
  init(asset asset: MDLAsset, divisions divisions: Int32, interiorNBWidth interiorNBWidth: Float, exteriorNBWidth exteriorNBWidth: Float, patchRadius patchRadius: Float)
  init(data voxelData: NSData, boundingBox boundingBox: MDLAxisAlignedBoundingBox, voxelExtent voxelExtent: Float)
  func meshUsingAllocator(_ allocator: MDLMeshBufferAllocator?) -> MDLMesh?
  func voxelExistsAtIndex(_ index: MDLVoxelIndex, allowAnyX allowAnyX: Bool, allowAnyY allowAnyY: Bool, allowAnyZ allowAnyZ: Bool, allowAnyShell allowAnyShell: Bool) -> Bool
  func setVoxelAtIndex(_ index: MDLVoxelIndex)
  func setVoxelsForMesh(_ mesh: MDLMesh, divisions divisions: Int32, interiorShells interiorShells: Int32, exteriorShells exteriorShells: Int32, patchRadius patchRadius: Float)
  func setVoxelsForMesh(_ mesh: MDLMesh, divisions divisions: Int32, interiorNBWidth interiorNBWidth: Float, exteriorNBWidth exteriorNBWidth: Float, patchRadius patchRadius: Float)
  func voxelsWithinExtent(_ extent: MDLVoxelIndexExtent) -> NSData?
  func voxelIndices() -> NSData?
  func unionWithVoxels(_ voxels: MDLVoxelArray)
  func differenceWithVoxels(_ voxels: MDLVoxelArray)
  func intersectWithVoxels(_ voxels: MDLVoxelArray)
  func indexOfSpatialLocation(_ location: vector_float3) -> MDLVoxelIndex
  func spatialLocationOfIndex(_ index: MDLVoxelIndex) -> vector_float3
  func voxelBoundingBoxAtIndex(_ index: MDLVoxelIndex) -> MDLAxisAlignedBoundingBox
  var count: Int { get }
  var voxelIndexExtent: MDLVoxelIndexExtent { get }
  var boundingBox: MDLAxisAlignedBoundingBox { get }
}
