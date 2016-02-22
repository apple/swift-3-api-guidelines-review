
var kLSMMapOutOfState: Int { get }
var kLSMMapNoSuchCategory: Int { get }
var kLSMMapWriteError: Int { get }
var kLSMMapBadPath: Int { get }
var kLSMMapBadCluster: Int { get }
var kLSMMapOverflow: Int { get }
class LSMMap {
}
func LSMMapGetTypeID() -> CFTypeID
class LSMText {
}
func LSMTextGetTypeID() -> CFTypeID
class LSMResult {
}
func LSMResultGetTypeID() -> CFTypeID
typealias LSMCategory = UInt32
func LSMMapCreate(_ alloc: CFAllocator!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapPairs: Int { get }
var kLSMMapTriplets: Int { get }
var kLSMMapHashText: Int { get }
func LSMMapSetProperties(_ mapref: LSMMap!, _ properties: CFDictionary!)
func LSMMapGetProperties(_ mapref: LSMMap!) -> Unmanaged<CFDictionary>!
var kLSMAlgorithmKey: String { get }
var kLSMAlgorithmDense: String { get }
var kLSMAlgorithmSparse: String { get }
var kLSMPrecisionKey: String { get }
var kLSMPrecisionFloat: String { get }
var kLSMPrecisionDouble: String { get }
var kLSMDimensionKey: String { get }
var kLSMIterationsKey: String { get }
var kLSMSweepAgeKey: String { get }
var kLSMSweepCutoffKey: String { get }
func LSMMapStartTraining(_ mapref: LSMMap!) -> OSStatus
func LSMMapAddCategory(_ mapref: LSMMap!) -> LSMCategory
func LSMMapGetCategoryCount(_ mapref: LSMMap!) -> CFIndex
func LSMMapSetStopWords(_ mapref: LSMMap!, _ textref: LSMText!) -> OSStatus
func LSMMapAddText(_ mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory) -> OSStatus
func LSMMapAddTextWithWeight(_ mapref: LSMMap!, _ textref: LSMText!, _ category: LSMCategory, _ weight: Float) -> OSStatus
func LSMMapCompile(_ mapref: LSMMap!) -> OSStatus
func LSMMapCreateClusters(_ alloc: CFAllocator!, _ mapref: LSMMap!, _ subset: CFArray!, _ numClusters: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<CFArray>!
var kLSMClusterCategories: Int { get }
var kLSMClusterWords: Int { get }
var kLSMClusterTokens: Int { get }
var kLSMClusterKMeans: Int { get }
var kLSMClusterAgglomerative: Int { get }
func LSMMapApplyClusters(_ mapref: LSMMap!, _ clusters: CFArray!) -> OSStatus
func LSMResultCreate(_ alloc: CFAllocator!, _ mapref: LSMMap!, _ textref: LSMText!, _ numResults: CFIndex, _ flags: CFOptionFlags) -> Unmanaged<LSMResult>!
var kLSMResultBestWords: Int { get }
func LSMResultGetCount(_ result: LSMResult!) -> CFIndex
func LSMResultGetCategory(_ result: LSMResult!, _ n: CFIndex) -> LSMCategory
func LSMResultGetScore(_ result: LSMResult!, _ n: CFIndex) -> Float
func LSMResultCopyWord(_ result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFString>!
func LSMResultCopyToken(_ mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFData>!
func LSMResultCopyWordCluster(_ result: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!
func LSMResultCopyTokenCluster(_ mapref: LSMResult!, _ n: CFIndex) -> Unmanaged<CFArray>!
func LSMMapWriteToURL(_ mapref: LSMMap!, _ file: CFURL!, _ flags: CFOptionFlags) -> OSStatus
func LSMMapCreateFromURL(_ alloc: CFAllocator!, _ file: CFURL!, _ flags: CFOptionFlags) -> Unmanaged<LSMMap>!
var kLSMMapDiscardCounts: Int { get }
var kLSMMapLoadMutable: Int { get }
func LSMMapWriteToStream(_ mapref: LSMMap!, _ textref: LSMText!, _ stream: CFWriteStream!, _ options: CFOptionFlags) -> OSStatus
func LSMTextCreate(_ alloc: CFAllocator!, _ mapref: LSMMap!) -> Unmanaged<LSMText>!
func LSMTextAddWord(_ textref: LSMText!, _ word: CFString!) -> OSStatus
func LSMTextAddWords(_ textref: LSMText!, _ words: CFString!, _ locale: CFLocale!, _ flags: CFOptionFlags) -> OSStatus
var kLSMTextPreserveCase: Int { get }
var kLSMTextPreserveAcronyms: Int { get }
var kLSMTextApplySpamHeuristics: Int { get }
func LSMTextAddToken(_ textref: LSMText!, _ token: CFData!) -> OSStatus
