
var kIMKSingleColumnScrollingCandidatePanel: Int { get }
var kIMKScrollingGridCandidatePanel: Int { get }
var kIMKSingleRowSteppingCandidatePanel: Int { get }
typealias IMKCandidatePanelType = Int
var kIMKMain: Int { get }
var kIMKAnnotation: Int { get }
var kIMKSubList: Int { get }
typealias IMKStyleType = Int
var kIMKLocateCandidatesAboveHint: Int { get }
var kIMKLocateCandidatesBelowHint: Int { get }
var kIMKLocateCandidatesLeftHint: Int { get }
var kIMKLocateCandidatesRightHint: Int { get }
typealias IMKCandidatesLocationHint = Int
let IMKCandidatesOpacityAttributeName: String
let IMKCandidatesSendServerKeyEventFirst: String
class IMKCandidates : NSResponder {
  init!(server: IMKServer!, panelType: IMKCandidatePanelType)
  init!(server: IMKServer!, panelType: IMKCandidatePanelType, styleType style: IMKStyleType)
  func panelType() -> IMKCandidatePanelType
  func setPanelType(panelType: IMKCandidatePanelType)
  func show(locationHint: IMKCandidatesLocationHint)
  func hide()
  func isVisible() -> Bool
  func updateCandidates()
  func showAnnotation(annotationString: NSAttributedString!)
  func showSublist(candidates: [AnyObject]!, subListDelegate delegate: AnyObject!)
  func selectedCandidateString() -> NSAttributedString!
  func setCandidateFrameTopLeft(point: NSPoint)
  func candidateFrame() -> NSRect
  func setSelectionKeys(keyCodes: [AnyObject]!)
  func selectionKeys() -> [AnyObject]!
  func setSelectionKeysKeylayout(layout: TISInputSource!)
  func selectionKeysKeylayout() -> Unmanaged<TISInputSource>!
  func setAttributes(attributes: [NSObject : AnyObject]!)
  func attributes() -> [NSObject : AnyObject]!
  func setDismissesAutomatically(flag: Bool)
  func dismissesAutomatically() -> Bool
  @available(OSX 10.7, *)
  func selectedCandidate() -> Int
  @available(OSX 10.7, *)
  func showChild()
  @available(OSX 10.7, *)
  func hideChild()
  @available(OSX 10.7, *)
  func attachChild(child: IMKCandidates!, toCandidate candidateIdentifier: Int, type theType: IMKStyleType)
  @available(OSX 10.7, *)
  func detachChild(candidateIdentifier: Int)
  @available(OSX 10.7, *)
  func setCandidateData(candidatesArray: [AnyObject]!)
  @available(OSX 10.7, *)
  func selectCandidateWithIdentifier(candidateIdentifier: Int) -> Bool
  func selectCandidate(candidateIdentifier: Int)
  @available(OSX 10.7, *)
  func showCandidates()
  @available(OSX 10.7, *)
  func candidateStringIdentifier(candidateString: AnyObject!) -> Int
  @available(OSX 10.7, *)
  func candidateIdentifierAtLineNumber(lineNumber: Int) -> Int
  @available(OSX 10.7, *)
  func lineNumberForCandidateWithIdentifier(candidateIdentifier: Int) -> Int
  @available(OSX 10.7, *)
  func clearSelection()
  init()
  init?(coder: NSCoder)
}
