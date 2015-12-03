/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The base class for a `LevelScene`'s Pause, Fail, and Success states. Handles the task of loading and displaying a full-screen overlay from a scene file when the state is entered.
*/

import SpriteKit
import GameplayKit

class LevelSceneOverlayState: GKState {
    // MARK: Properties
    
    unowned let levelScene: LevelScene
    
    /// The `SceneOverlay` to display when the state is entered.
    var overlay: SceneOverlay!
    
    /// Overridden by subclasses to provide the name of the .sks file to load to show as an overlay.
    var overlaySceneFileName: String { fatalError("Unimplemented overlaySceneName") }
    
    // MARK: Initializers
    
    init(levelScene: LevelScene) {
        self.levelScene = levelScene
        
        super.init()
        
        overlay = SceneOverlay(overlaySceneFileName: overlaySceneFileName, zPosition: WorldLayer.Top.rawValue)
        
        /*
            Set the level preview image to the image for this state's level if this state
            has a "view recorded content" button, with a child node called "levelPreview".
        */
        if let viewRecordedContentButton = buttonWith(.ViewRecordedContent) , levelPreviewNode = viewRecordedContentButton.childNodeWithName("levelPreview") as? SKSpriteNode {
            levelPreviewNode.texture = SKTexture(imageNamed: levelScene.levelConfiguration.fileName)
        }
    }

    // MARK: GKState Life Cycle

    override func didEnterWithPreviousState(previousState: GKState?) {
        super.didEnterWithPreviousState(previousState)
        
        #if os(iOS)
        // Show the appropriate state for the recording buttons.
        buttonWith(.ScreenRecorderToggle)?.isSelected = levelScene.isScreenRecordingToggleEnabled
        
        if self is LevelSceneSuccessState || self is LevelSceneFailState {
            if let viewRecordedContentButton = buttonWith(.ViewRecordedContent) {
                viewRecordedContentButton.isHidden = true
                
                // Stop screen recording and update view recorded content button when complete.
                levelScene.stopScreenRecordingWithHandler {
                    // Only show the view button if the recording is enabled and there's a valid `previewViewController` to present.
                    let recordingEnabledAndPreviewAvailable = self.levelScene.isScreenRecordingToggleEnabled && self.levelScene.previewViewController != nil
                    viewRecordedContentButton.isHidden = !recordingEnabledAndPreviewAvailable
                }
            }
        }
        #else
        // Hide replay buttons on OSX and tvOS.
        buttonWith(.ScreenRecorderToggle)?.isHidden = true
        buttonWith(.ViewRecordedContent)?.isHidden = true
        #endif
        
        // Provide the levelScene with a reference to the overlay node.
        levelScene.overlay = overlay
    }

    override func willExitWithNextState(nextState: GKState) {
        super.willExitWithNextState(nextState)
        
        levelScene.overlay = nil
        
        #if os(iOS)
        if self is LevelSceneSuccessState || self is LevelSceneFailState {
            // After leaving this state, we should discard the recording.
            levelScene.discardRecording()
        }
        #endif
    }
    
    // MARK: Convenience
    
    func buttonWith(identifier: ButtonIdentifier) -> ButtonNode? {
        return overlay.contentNode.childNodeWithName("//\(identifier.rawValue)") as? ButtonNode
    }
}