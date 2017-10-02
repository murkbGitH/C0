/*
 Copyright 2017 S
 
 This file is part of C0.
 
 C0 is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 C0 is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with C0.  If not, see <http://www.gnu.org/licenses/>.
 */

//# Issue
//サイズとフレームレートの自由化
//書き出しの種類を増やす

import Foundation
import QuartzCore
import AppKit.NSColor

struct SceneLayout {
    static let buttonsWidth = 120.0.cf, buttonHeight = 24.0.cf, height = buttonHeight*5.cf
    static let timelineWidth = 430.0.cf, timelineButtonsWidth = 142.0.cf, materialWidth = 205.0.cf, rightWidth = 205.0.cf
    static let materialLeftWidth = 85.0.cf, easingWidth = 100.0.cf, transformWidth = 32.0.cf
    
    static let timelineFrame = CGRect(x: 0, y: 0, width: timelineWidth, height: buttonHeight*4)
    static let timelineEditFrame = CGRect(x: 0, y: buttonHeight, width: timelineWidth, height: buttonHeight*3)
    static let timelineAddCutFrame = CGRect(x: 0, y: 0, width: timelineButtonsWidth, height: buttonHeight)
    static let timelineSplitKeyframeFrame = CGRect(x: timelineButtonsWidth, y: 0, width: timelineButtonsWidth + 4, height: buttonHeight)
    static let timelineAddGroupFrame = CGRect(x: timelineButtonsWidth*2 + 4, y: 0, width: timelineButtonsWidth, height: buttonHeight)
    
    static let materialFrame =  CGRect(x: 0, y: 0, width: materialWidth, height: height)
    static let materialColorFrame = CGRect(x: materialLeftWidth, y: 0, width: height, height: height)
    static let materialTypeFrame = CGRect(x: 0, y: buttonHeight*4, width: materialLeftWidth, height: buttonHeight)
    static let materialLineWidthFrame = CGRect(x: 0, y: buttonHeight*3, width: materialLeftWidth, height: buttonHeight)
    static let materialLineStrengthFrame = CGRect(x: 0, y: buttonHeight*2, width: materialLeftWidth, height: buttonHeight)
    static let materialOpacityFrame = CGRect(x: 0, y: buttonHeight, width: materialLeftWidth, height: buttonHeight)
    static let materialLuminanceFrame = CGRect(x: 10 - 4, y: 0, width: materialLeftWidth - buttonHeight - 10, height: buttonHeight)
    static let materialBlendHueFrame = CGRect(x: materialLeftWidth - buttonHeight - 4, y: 0, width: buttonHeight, height: buttonHeight)
    static let materialAnimationFrame = CGRect(x: 0, y: 0, width: materialLeftWidth, height: buttonHeight)
    
    static let keyframeFrame = CGRect(x: 0, y: 0, width: rightWidth, height: buttonHeight*2)
    static let keyframeEasingFrame = CGRect(x: 0, y: 0, width: easingWidth, height: buttonHeight*2)
    static let keyframeInterpolationFrame = CGRect(x: easingWidth, y: buttonHeight, width: rightWidth - easingWidth, height: buttonHeight)
    static let keyframeLoopFrame = CGRect(x: easingWidth, y: 0, width: rightWidth - easingWidth, height: buttonHeight)
    
    static let viewTypeFrame = CGRect(x: 0, y: 0, width: rightWidth, height: buttonHeight*4)
    static let viewTypeIsShownPreviousFrame = CGRect(x: 0, y: buttonHeight*3, width: rightWidth, height: buttonHeight)
    static let viewTypeIsShownNextFrame = CGRect(x: 0, y: buttonHeight*2, width: rightWidth, height: buttonHeight)
    static let viewTypeIsFlippedHorizontalFrame = CGRect(x: 0, y: buttonHeight, width: rightWidth, height: buttonHeight)
    
    static let transformFrame = CGRect(x: 0, y: 0, width: timelineWidth, height: buttonHeight)
    static let tarsnformValueFrame = CGRect(x: 0, y: 0, width: transformWidth, height: buttonHeight)
    
    static let soundFrame = CGRect(x: 0, y: 0, width: rightWidth, height: buttonHeight)
}
struct SceneDefaults {
    static let roughColor = NSColor(red: 0, green: 0.5, blue: 1, alpha: 0.15).cgColor
    static let subRoughColor = NSColor(red: 0, green: 0.5, blue: 1, alpha: 0.1).cgColor
    static let previousColor = NSColor(red: 1, green: 0, blue: 0, alpha: 0.1).cgColor
    static let subPreviousColor = NSColor(red: 1, green: 0.2, blue: 0.2, alpha: 0.025).cgColor
    static let previousSkinColor = SceneDefaults.previousColor.copy(alpha: 1)!
    static let subPreviousSkinColor = SceneDefaults.subPreviousColor.copy(alpha: 0.08)!
    static let nextColor = NSColor(red: 0.2, green: 0.8, blue: 0, alpha: 0.1).cgColor
    static let subNextColor = NSColor(red: 0.4, green: 1, blue: 0, alpha: 0.025).cgColor
    static let nextSkinColor = SceneDefaults.nextColor.copy(alpha: 1)!
    static let subNextSkinColor = SceneDefaults.subNextColor.copy(alpha: 0.08)!
    static let selectionColor = NSColor(red: 0.1, green: 0.7, blue: 1, alpha: 1).cgColor
    static let interpolationColor = NSColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1).cgColor
    static let subSelectionColor = NSColor(red: 0.8, green: 0.95, blue: 1, alpha: 0.6).cgColor
    static let subSelectionSkinColor =  SceneDefaults.subSelectionColor.copy(alpha: 0.3)!
    static let selectionSkinLineColor =  SceneDefaults.subSelectionColor.copy(alpha: 1.0)!
    
    static let editMaterialColor = NSColor(red: 1, green: 0.5, blue: 0, alpha: 0.2).cgColor
    static let editMaterialColorColor = NSColor(red: 1, green: 0.75, blue: 0, alpha: 0.2).cgColor
    
    static let cellBorderNormalColor = NSColor(white: 0, alpha: 0.15).cgColor
    static let cellBorderColor = NSColor(white: 0, alpha: 0.2).cgColor
    static let cellIndicationNormalColor = SceneDefaults.selectionColor.copy(alpha: 0.9)!
    static let cellIndicationColor = SceneDefaults.selectionColor.copy(alpha: 0.4)!
    
    static let controlPointInColor = Defaults.contentColor.cgColor
    static let controlPointOutColor = Defaults.editColor.cgColor
    static let controlPointCapInColor = NSColor(red: 1, green: 1, blue: 0, alpha: 1).cgColor
    static let controlPointCapOutColor = Defaults.editColor.cgColor
    static let controlPointJointInColor = NSColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
    static let controlPointOtherJointInColor = NSColor(red: 1, green: 0.5, blue: 1, alpha: 1).cgColor
    static let controlPointJointOutColor = Defaults.editColor.cgColor
    static let controlPointUnionInColor = NSColor(red: 0, green: 1, blue: 0.2, alpha: 1).cgColor
    static let controlPointUnionOutColor = Defaults.editColor.cgColor
    static let controlPointPathInColor = NSColor(red: 0, green: 1, blue: 1, alpha: 1).cgColor
    static let controlPointPathOutColor = Defaults.editColor.cgColor
    
    static let editControlPointInColor = NSColor(red: 1, green: 0, blue: 0, alpha: 0.8).cgColor
    static let editControlPointOutColor = NSColor(red: 1, green: 0.5, blue: 0.5, alpha: 0.3).cgColor
    static let contolLineInColor = NSColor(red: 1, green: 0.5, blue: 0.5, alpha: 0.3).cgColor
    static let contolLineOutColor = NSColor(red: 1, green: 0, blue: 0, alpha: 0.3).cgColor
    
    static let moveZColor = NSColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
    static let moveZSelectionColor = NSColor(red: 1, green: 0.5, blue: 0, alpha: 1).cgColor
    
    static let cameraColor = NSColor(red: 0.7, green: 0.6, blue: 0, alpha: 1).cgColor
    static let cameraBorderColor = NSColor(red: 1, green: 0, blue: 0, alpha: 0.5).cgColor
    static let cutBorderColor = NSColor(red: 0.3, green: 0.46, blue: 0.7, alpha: 0.5).cgColor
    static let cutSubBorderColor = NSColor(white: 1, alpha: 0.5).cgColor
    
    static let backgroundColor = NSColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    
    static let strokeLineWidth = 1.35.cf, strokeLineColor = NSColor(white: 0, alpha: 1).cgColor
    static let playBorderColor = NSColor(white: 0.3, alpha: 1).cgColor
    
    static let rotateCautionColor = NSColor.red.cgColor
    
    static let speechBorderColor = NSColor(white: 0, alpha: 1).cgColor
    static let speechFillColor = NSColor(white: 1, alpha: 1).cgColor
    static let speechFont = NSFont.boldSystemFont(ofSize: 25) as CTFont
}

final class Scene: NSObject, NSCoding {
    var cameraFrame: CGRect {
        didSet {
            affineTransform = viewTransform.affineTransform(with: cameraFrame)
        }
    }
    var frameRate: Int, time: Int, material: Material, isShownPrevious: Bool, isShownNext: Bool, soundItem: SoundItem
    var viewTransform: ViewTransform {
        didSet {
            affineTransform = viewTransform.affineTransform(with: cameraFrame)
        }
    }
    private(set) var affineTransform: CGAffineTransform?
    
    init(cameraFrame: CGRect = CGRect(x: 0, y: 0, width: 640, height: 360), frameRate: Int = 24, time: Int = 0, material: Material = Material(), isShownPrevious: Bool = false, isShownNext: Bool = false, soundItem: SoundItem = SoundItem(), viewTransform: ViewTransform = ViewTransform()) {
        self.cameraFrame = cameraFrame
        self.frameRate = frameRate
        self.time = time
        self.material = material
        self.isShownPrevious = isShownPrevious
        self.isShownNext = isShownNext
        self.soundItem = soundItem
        self.viewTransform = viewTransform
        
        affineTransform = viewTransform.affineTransform(with: cameraFrame)
        super.init()
    }
    
    static let dataType = "C0.Scene.1", cameraFrameKey = "0", frameRateKey = "1", timeKey = "2", materialKey = "3", isShownPreviousKey = "4", isShownNextKey = "5", soundItemKey = "7", viewTransformKey = "6"
    init?(coder: NSCoder) {
        cameraFrame = coder.decodeRect(forKey: Scene.cameraFrameKey)
        frameRate = coder.decodeInteger(forKey: Scene.frameRateKey)
        time = coder.decodeInteger(forKey: Scene.timeKey)
        material = coder.decodeObject(forKey: Scene.materialKey) as? Material ?? Material()
        isShownPrevious = coder.decodeBool(forKey: Scene.isShownPreviousKey)
        isShownNext = coder.decodeBool(forKey: Scene.isShownNextKey)
        soundItem = coder.decodeObject(forKey: Scene.soundItemKey) as? SoundItem ?? SoundItem()
        viewTransform = coder.decodeStruct(forKey: Scene.viewTransformKey) ?? ViewTransform()
        affineTransform = viewTransform.affineTransform(with: cameraFrame)
        super.init()
    }
    func encode(with coder: NSCoder) {
        coder.encode(cameraFrame, forKey: Scene.cameraFrameKey)
        coder.encode(frameRate, forKey: Scene.frameRateKey)
        coder.encode(time, forKey: Scene.timeKey)
        coder.encode(material, forKey: Scene.materialKey)
        coder.encode(isShownPrevious, forKey: Scene.isShownPreviousKey)
        coder.encode(isShownNext, forKey: Scene.isShownNextKey)
        coder.encode(soundItem, forKey: Scene.soundItemKey)
        coder.encodeStruct(viewTransform, forKey: Scene.viewTransformKey)
    }
    
    func convertTime(frameTime ft: Int) -> TimeInterval {
        return TimeInterval(ft)/TimeInterval(frameRate)
    }
    func convertFrameTime(time t: TimeInterval) -> Int {
        return Int(t*TimeInterval(frameRate))
    }
    var secondTime: (second: Int, frame: Int) {
        let second = time/frameRate
        return (second, time - second*frameRate)
    }
}
struct ViewTransform: ByteCoding {
    var position = CGPoint(), scale = 1.0.cf, rotation = 0.0.cf, isFlippedHorizontal = false
    var isIdentity: Bool {
        return position == CGPoint() && scale == 1 && rotation == 0
    }
    func affineTransform(with bounds: CGRect) -> CGAffineTransform? {
        if scale == 1 && rotation == 0 && position == CGPoint() && !isFlippedHorizontal {
            return nil
        }
        var affine = CGAffineTransform.identity
        affine = affine.translatedBy(x: bounds.midX + position.x, y: bounds.midY + position.y)
        affine = affine.rotated(by: rotation)
        affine = affine.scaledBy(x: scale, y: scale)
        affine = affine.translatedBy(x: -bounds.midX, y: -bounds.midY)
        if isFlippedHorizontal {
            affine = affine.flippedHorizontal(by: bounds.width)
        }
        return affine
    }
}

final class SceneEditor: View {
    private let isHiddenCommandKey = "isHiddenCommand"
    
    let clipper = View(), canvas = Canvas(), timelineEditor = TimelineEditor(), speechEditor = SpeechEditor()
    let materialEditor = MaterialEditor(), keyframeEditor = KeyframeEditor(), transformEditor = TransformEditor(), soundEditor = SoundEditor(), viewTypesEditor = ViewTypesEditor()
    let rendererEditor = RendererEditor(), actionEditor = ActionEditor()
    var timeline: Timeline {
        return timelineEditor.timeline
    }
    
    override init(layer: CALayer = CALayer.interfaceLayer()) {
        super.init(layer: layer)
        layer.backgroundColor = nil
        clipper.layer.backgroundColor = nil
        canvas.sceneEditor = self
        timelineEditor.sceneEditor = self
        transformEditor.sceneEditor = self
        speechEditor.sceneEditor = self
        materialEditor.sceneEditor = self
        keyframeEditor.sceneEditor = self
        viewTypesEditor.sceneEditor = self
        rendererEditor.sceneEditor = self
        soundEditor.sceneEditor = self
        soundEditor.description = "Set sound with paste sound file, switch mute with hide / show command, delete sound with delete command".localized
        clipper.children = [canvas, timelineEditor, materialEditor, keyframeEditor, transformEditor, speechEditor, viewTypesEditor, soundEditor, rendererEditor, actionEditor]
        children = [clipper]
        updateSubviews()
    }
    
    func updateSubviews() {
        let ih = timelineEditor.frame.height + SceneLayout.buttonHeight*2
        let tx = materialEditor.frame.width, gx = materialEditor.frame.width + timelineEditor.frame.width
        let kx = gx, h = ih + canvas.frame.height
        CATransaction.disableAnimation {
            canvas.frame.origin = CGPoint(x: 0, y: ih)
            materialEditor.frame.origin = CGPoint(x: 0, y: ih - materialEditor.frame.height)
            timelineEditor.frame.origin = CGPoint(x: tx, y: ih - timelineEditor.frame.height)
            keyframeEditor.frame.origin = CGPoint(x: kx, y: ih - keyframeEditor.frame.height)
            viewTypesEditor.frame.origin = CGPoint(x: gx, y: ih - keyframeEditor.frame.height - viewTypesEditor.frame.height)
            transformEditor.frame.origin = CGPoint(x: tx, y: ih - timelineEditor.frame.height - transformEditor.frame.height)
            soundEditor.frame.origin = CGPoint(x: kx, y: ih - timelineEditor.frame.height - transformEditor.frame.height)
            speechEditor.frame.origin = CGPoint(x: tx, y: ih - timelineEditor.frame.height - speechEditor.frame.height - transformEditor.frame.height)
            rendererEditor.frame = CGRect(x: 0, y: 0, width: canvas.frame.width, height: ih - materialEditor.frame.height)
            actionEditor.frame.origin = CGPoint(x: canvas.frame.width, y: h - actionEditor.frame.height)
            clipper.bounds = CGRect(x: 0, y: 0, width: canvas.frame.width + actionEditor.frame.width, height: h)
        }
    }
    
    var displayActionNode: ActionNode {
        get {
            return actionEditor.displayActionNode
        }
        set {
            actionEditor.displayActionNode = newValue
            updateSubviews()
        }
    }
    var sceneEntity = SceneEntity() {
        didSet {
            timeline.sceneEntity = sceneEntity
            scene = sceneEntity.preference.scene
            canvas.scene = sceneEntity.preference.scene
            timeline.scene = sceneEntity.preference.scene
            materialEditor.material = sceneEntity.preference.scene.material
            viewTypesEditor.isShownPreviousButton.selectionIndex = sceneEntity.preference.scene.isShownPrevious ? 1 : 0
            viewTypesEditor.isShownNextButton.selectionIndex = sceneEntity.preference.scene.isShownNext ? 1 : 0
            viewTypesEditor.isFlippedHorizontalButton.selectionIndex = sceneEntity.preference.scene.viewTransform.isFlippedHorizontal ? 1 : 0
            soundEditor.scene = sceneEntity.preference.scene
        }
    }
    var scene = Scene(), padding = 10.0.cf
    override var frame: CGRect {
        didSet {
            let minX = floor(bounds.midX - clipper.frame.width/2), maxY = floor(bounds.midY - clipper.frame.height/2) + clipper.frame.height
            let p = CGPoint(x: minX < padding ? padding : minX, y: maxY > bounds.height - padding ? bounds.height - padding - clipper.frame.height : floor(bounds.midY - clipper.frame.height/2))
            if p != clipper.frame.origin {
                clipper.frame.origin = p
            }
        }
    }
    
    override func undo() {
        if timeline.isPlaying {
            timeline.stop()
        } else {
            super.undo()
        }
    }
    override func redo() {
        if timeline.isPlaying {
            timeline.stop()
        } else {
            super.redo()
        }
    }
    
    override func moveToPrevious() {
        timeline.moveToPrevious()
    }
    override func moveToNext() {
        timeline.moveToNext()
    }
    override func play() {
        timeline.play()
    }
    
    override func changeToRough() {
        canvas.changeToRough()
    }
    override func removeRough() {
        canvas.removeRough()
    }
    override func swapRough() {
        canvas.swapRough()
    }
    
    override func scroll(with event: ScrollEvent) {
        timeline.scroll(with: event)
    }
}

final class KeyframeEditor: View, EasingEditorDelegate, PulldownButtonDelegate {
    weak var sceneEditor: SceneEditor!
    
    let easingEditor = EasingEditor(frame: SceneLayout.keyframeEasingFrame)
    let interpolationButton = PulldownButton(frame: SceneLayout.keyframeInterpolationFrame, names: [
        "Spline".localized,
        "Bound".localized,
        "Linear".localized,
        "Step".localized
        ])
    let loopButton = PulldownButton(frame: SceneLayout.keyframeLoopFrame, names: [
        "No Loop".localized,
        "Began Loop".localized,
        "Ended Loop".localized
        ])
    
    override init(layer: CALayer = CALayer.interfaceLayer()) {
        super.init(layer: layer)
        layer.frame = SceneLayout.keyframeFrame
        easingEditor.delegate = self
        interpolationButton.delegate = self
        loopButton.delegate = self
        interpolationButton.description = "\"Bound\" uses \"Spline\" without interpolation on previous, when not previous and next, use \"Linear\"".localized
        loopButton.description = "Loop from  \"Began Loop\" keyframe to \"Ended Loop\" keyframe on \"Ended Loop\" keyframe".localized
        children = [easingEditor, interpolationButton, loopButton]
    }
    
    var keyframe = Keyframe() {
        didSet {
            if !keyframe.equalOption(other: oldValue) {
                updateSubviews()
            }
        }
    }
    func update() {
        keyframe = sceneEditor.timeline.selectionCutEntity.cut.editGroup.editKeyframe
    }
    private func updateSubviews() {
        loopButton.selectionIndex = KeyframeEditor.loopIndexWith(keyframe.loop, keyframe: keyframe)
        interpolationButton.selectionIndex = KeyframeEditor.interpolationIndexWith(keyframe.interpolation)
        easingEditor.easing = keyframe.easing
    }
    
    static func loopIndexWith(_ loop: Loop, keyframe: Keyframe) -> Int {
        let loop = keyframe.loop
        if !loop.isStart && !loop.isEnd {
            return 0
        } else if loop.isStart {
            return 1
        } else {
            return 2
        }
    }
    static func loopWith(_ index: Int) -> Loop {
        switch index {
        case 0:
            return Loop(isStart: false, isEnd: false)
        case 1:
            return Loop(isStart: true, isEnd: false)
        default:
            return Loop(isStart: false, isEnd: true)
        }
    }
    static func interpolationIndexWith(_ interpolation: Keyframe.Interpolation) -> Int {
        return Int(interpolation.rawValue)
    }
    static func interpolationWith(_ index: Int) -> Keyframe.Interpolation {
        return Keyframe.Interpolation(rawValue: Int8(index)) ?? .spline
    }
    
    private var changekeyframeTuple: (oldKeyframe: Keyframe, index: Int, group: Group, cutEntity: CutEntity)?
    static func changekeyframeTupleWith(_ cutEntity: CutEntity) -> (oldKeyframe: Keyframe, index: Int, group: Group, cutEntity: CutEntity) {
        let group = cutEntity.cut.editGroup
        return (group.editKeyframe, group.editKeyframeIndex, group, cutEntity)
    }
    func changeEasing(_ easingEditor: EasingEditor, easing: Easing, oldEasing: Easing, type: Action.SendType) {
        switch type {
        case .begin:
            changekeyframeTuple = KeyframeEditor.changekeyframeTupleWith(sceneEditor.timeline.selectionCutEntity)
        case .sending:
            if let ckp = changekeyframeTuple {
                let keyframe = ckp.oldKeyframe.withEasing(easing)
                setKeyframe(keyframe, at: ckp.index, group: ckp.group)
            }
        case .end:
            if let ckp = changekeyframeTuple {
                let keyframe = ckp.oldKeyframe.withEasing(easing)
                setEasing(keyframe, oldKeyframe: ckp.oldKeyframe, at: ckp.index, group: ckp.group, cutEntity: ckp.cutEntity)
                changekeyframeTuple = nil
            }
        }
    }
    func changeValue(_ pulldownButton: PulldownButton, index: Int, oldIndex: Int, type: Action.SendType) {
        switch pulldownButton {
        case interpolationButton:
            switch type {
            case .begin:
                changekeyframeTuple = KeyframeEditor.changekeyframeTupleWith(sceneEditor.timeline.selectionCutEntity)
            case .sending:
                if let ckp = changekeyframeTuple {
                    let keyframe = ckp.oldKeyframe.withInterpolation(KeyframeEditor.interpolationWith(index))
                    setKeyframe(keyframe, at: ckp.index, group: ckp.group)
                }
            case .end:
                if let ckp = changekeyframeTuple {
                    let keyframe = ckp.oldKeyframe.withInterpolation(KeyframeEditor.interpolationWith(index))
                    setInterpolation(keyframe, oldKeyframe: ckp.oldKeyframe, at: ckp.index, group: ckp.group, cutEntity: ckp.cutEntity)
                    changekeyframeTuple = nil
                }
            }
        case loopButton:
            switch type {
            case .begin:
                changekeyframeTuple = KeyframeEditor.changekeyframeTupleWith(sceneEditor.timeline.selectionCutEntity)
            case .sending:
                if let ckp = changekeyframeTuple {
                    let keyframe = ckp.oldKeyframe.withLoop(KeyframeEditor.loopWith(index))
                    setKeyframe(keyframe, at: ckp.index, group: ckp.group)
                }
            case .end:
                if let ckp = changekeyframeTuple {
                    let keyframe = ckp.oldKeyframe.withLoop(KeyframeEditor.loopWith(index))
                    setLoop(keyframe, oldKeyframe: ckp.oldKeyframe, at: ckp.index, group: ckp.group, cutEntity: ckp.cutEntity)
                    changekeyframeTuple = nil
                }
            }
        default:
            break
        }
    }
    private func setEasing(_ keyframe: Keyframe, oldKeyframe: Keyframe, at i: Int, group: Group, cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0.setEasing(oldKeyframe, oldKeyframe: keyframe, at: i, group: group, cutEntity: cutEntity) }
        setKeyframe(keyframe, at: i, group: group)
        easingEditor.easing = keyframe.easing
        cutEntity.isUpdate = true
    }
    private func setInterpolation(_ keyframe: Keyframe, oldKeyframe: Keyframe, at i: Int, group: Group, cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0.setInterpolation(oldKeyframe, oldKeyframe: keyframe, at: i, group: group, cutEntity: cutEntity) }
        setKeyframe(keyframe, at: i, group: group)
        interpolationButton.selectionIndex = KeyframeEditor.interpolationIndexWith(keyframe.interpolation)
        cutEntity.isUpdate = true
    }
    private func setLoop(_ keyframe: Keyframe, oldKeyframe: Keyframe, at i: Int, group: Group, cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0.setLoop(oldKeyframe, oldKeyframe: keyframe, at: i, group: group, cutEntity: cutEntity) }
        setKeyframe(keyframe, at: i, group: group)
        loopButton.selectionIndex = KeyframeEditor.loopIndexWith(keyframe.loop, keyframe: keyframe)
        cutEntity.isUpdate = true
    }
    func setKeyframe(_ keyframe: Keyframe, at i: Int, group: Group) {
        group.replaceKeyframe(keyframe, at: i)
        update()
        sceneEditor.timeline.setNeedsDisplay()
        sceneEditor.canvas.setNeedsDisplay()
    }
}

final class ViewTypesEditor: View, PulldownButtonDelegate {
    weak var sceneEditor: SceneEditor!
    let isShownPreviousButton = PulldownButton(frame: SceneLayout.viewTypeIsShownPreviousFrame, isEnabledCation: true, names: [
        "Hidden Previous".localized,
        "Shown Previous".localized
        ])
    let isShownNextButton = PulldownButton(frame: SceneLayout.viewTypeIsShownNextFrame, isEnabledCation: true, names: [
        "Hidden Next".localized,
        "Shown Next".localized
        ])
    let isFlippedHorizontalButton = PulldownButton(frame: SceneLayout.viewTypeIsFlippedHorizontalFrame, isEnabledCation: true, names: [
        "Unflipped Horizontal".localized,
        "Flipped Horizontal".localized
        ])
    override init(layer: CALayer = CALayer.interfaceLayer()) {
        super.init(layer: layer)
        layer.frame = SceneLayout.viewTypeFrame
        layer.backgroundColor = nil
        isShownPreviousButton.delegate = self
        isShownNextButton.delegate = self
        isFlippedHorizontalButton.delegate = self
        isShownPreviousButton.description = "Hide/Show line drawing of previous keyframe".localized
        isShownNextButton.description = "Hide/Show line drawing of next keyframe".localized
        children = [isShownPreviousButton, isShownNextButton]
    }
    
    func changeValue(_ pulldownButton: PulldownButton, index: Int, oldIndex: Int, type: Action.SendType) {
        switch pulldownButton {
        case isShownPreviousButton:
            switch type {
            case .begin:
                break
            case .sending:
                sceneEditor.canvas.isShownPrevious = index == 1
            case .end:
                if index != oldIndex {
                    setIsShownPrevious(index == 1, oldIsShownPrevious: oldIndex == 1)
                } else {
                    sceneEditor.canvas.isShownPrevious = index == 1
                }
            }
        case isShownNextButton:
            switch type {
            case .begin:
                break
            case .sending:
                sceneEditor.canvas.isShownNext = index == 1
            case .end:
                if index != oldIndex {
                    setIsShownNext(index == 1, oldIsShownNext: oldIndex == 1)
                } else {
                    sceneEditor.canvas.isShownNext = index == 1
                }
            }
        case isFlippedHorizontalButton:
            switch type {
            case .begin:
                break
            case .sending:
                sceneEditor.canvas.viewTransform.isFlippedHorizontal = index == 1
            case .end:
                if index != oldIndex {
                    setIsFlippedHorizontal(index == 1, oldIsFlippedHorizontal: oldIndex == 1)
                } else {
                    sceneEditor.canvas.viewTransform.isFlippedHorizontal = index == 1
                }
            }
        default:
            break
        }
    }
    private func setIsShownPrevious(_ isShownPrevious: Bool, oldIsShownPrevious: Bool) {
        undoManager?.registerUndo(withTarget: self) { $0.setIsShownPrevious(oldIsShownPrevious, oldIsShownPrevious: isShownPrevious) }
        isShownPreviousButton.selectionIndex = isShownPrevious ? 1 : 0
        sceneEditor.canvas.isShownPrevious = isShownPrevious
        sceneEditor.sceneEntity.isUpdatePreference = true
    }
    private func setIsShownNext(_ isShownNext: Bool, oldIsShownNext: Bool) {
        undoManager?.registerUndo(withTarget: self) { $0.setIsShownNext(oldIsShownNext, oldIsShownNext: isShownNext) }
        isShownNextButton.selectionIndex = isShownNext ? 1 : 0
        sceneEditor.canvas.isShownNext = isShownNext
        sceneEditor.sceneEntity.isUpdatePreference = true
    }
    private func setIsFlippedHorizontal(_ isFlippedHorizontal: Bool, oldIsFlippedHorizontal: Bool) {
        undoManager?.registerUndo(withTarget: self) { $0.setIsFlippedHorizontal(oldIsFlippedHorizontal, oldIsFlippedHorizontal: isFlippedHorizontal) }
        isFlippedHorizontalButton.selectionIndex = isFlippedHorizontal ? 1 : 0
        sceneEditor.canvas.viewTransform.isFlippedHorizontal = isFlippedHorizontal
        sceneEditor.sceneEntity.isUpdatePreference = true
    }
}

final class TransformEditor: View, SliderDelegate {
    weak var sceneEditor: SceneEditor!
    private let xLabel = StringView(string: "X:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let yLabel = StringView(string: "Y:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let zLabel = StringView(string: "Z:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let thetaLabel = StringView(string: "θ:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let wiggleXLabel = StringView(string: "Wiggle ".localized + "X:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let wiggleYLabel = StringView(string: "Wiggle ".localized + "Y:", font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, paddingWidth: 2, height: SceneLayout.buttonHeight)
    private let xSlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "", isNumberEdit: true, min: -10000, max: 10000, valueInterval: 0.01)
    private let ySlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "", isNumberEdit: true, min: -10000, max: 10000, valueInterval: 0.01)
    private let zSlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "", isNumberEdit: true, min: -20, max: 20, valueInterval: 0.01)
    private let thetaSlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "°", isNumberEdit: true, min: -10000, max: 10000, valueInterval: 0.5)
    private let wiggleXSlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "", isNumberEdit: true, min: 0, max: 1000, valueInterval: 0.01)
    private let wiggleYSlider = Slider(frame: SceneLayout.tarsnformValueFrame, unit: "", isNumberEdit: true, min: 0, max: 1000, valueInterval: 0.01)
    override init(layer: CALayer = CALayer.interfaceLayer()) {
        super.init(layer: layer)
        layer.frame = SceneLayout.transformFrame
        xSlider.delegate = self
        ySlider.delegate = self
        zSlider.delegate = self
        thetaSlider.delegate = self
        wiggleXSlider.delegate = self
        wiggleYSlider.delegate = self
        xSlider.description = "Camera position X".localized
        ySlider.description = "Camera position Y".localized
        zSlider.description = "Camera position Z".localized
        thetaSlider.description = "Camera angle".localized
        wiggleXSlider.description = "Camera wiggle X".localized
        wiggleYSlider.description = "Camera wiggle Y".localized
        let children: [View] = [xLabel, xSlider, yLabel, ySlider, zLabel, zSlider, thetaLabel, thetaSlider, wiggleXLabel, wiggleXSlider, wiggleYLabel, wiggleYSlider]
        TransformEditor.centered(children, in: layer.bounds)
        self.children = children
    }
    private static func centered(_ views: [View], in bounds: CGRect, paddingWidth: CGFloat = 4) {
        let w = views.reduce(-paddingWidth) { $0 +  $1.frame.width + paddingWidth }
        _ = views.reduce(floor((bounds.width - w)/2)) { x, view in
            view.frame.origin = CGPoint(x: x, y: 0)
            return x + view.frame.width + paddingWidth
        }
    }
    
    var transform = Transform() {
        didSet {
            if transform != oldValue {
                updateSubviews()
            }
        }
    }
    func update() {
        transform = sceneEditor.timeline.selectionCutEntity.cut.editGroup.transformItem?.transform ?? Transform()
    }
    private func updateSubviews() {
        let b = sceneEditor.scene.cameraFrame
        xSlider.value = transform.position.x/b.width
        ySlider.value = transform.position.y/b.height
        zSlider.value = transform.scale.width
        thetaSlider.value = transform.rotation*180/(.pi)
        wiggleXSlider.value = 10*transform.wiggle.maxSize.width/b.width
        wiggleYSlider.value = 10*transform.wiggle.maxSize.height/b.height
    }
    
    override func copy() {
        screen?.copy(transform.data, forType: Transform.dataType, from: self)
    }
    override func paste() {
        if let data = screen?.copyData(forType: Transform.dataType) {
            let transform = Transform(data: data)
            let cutEntity = sceneEditor.timeline.selectionCutEntity
            let group = cutEntity.cut.editGroup
            if cutEntity.cut.isInterpolatedKeyframe(with: group) {
                sceneEditor.timeline.splitKeyframe(with: group)
            }
            setTransform(transform, at: group.editKeyframeIndex, in: group, cutEntity)
        }
    }
    
    private var oldTransform = Transform(), keyIndex = 0, isMadeTransformItem = false
    private weak var oldTransformItem: TransformItem?, group: Group?, cutEntity: CutEntity?
    func changeValue(_ slider: Slider, value: CGFloat, oldValue: CGFloat, type: Action.SendType) {
        switch type {
        case .begin:
            undoManager?.beginUndoGrouping()
            let cutEntity = sceneEditor.timeline.selectionCutEntity
            let group = cutEntity.cut.editGroup
            if cutEntity.cut.isInterpolatedKeyframe(with: group) {
                sceneEditor.timeline.splitKeyframe(with: group)
            }
            let t = transformWith(value: value, slider: slider, oldTransform: transform)
            oldTransformItem = group.transformItem
            if let transformItem = group.transformItem {
                oldTransform = transformItem.transform
                isMadeTransformItem = false
            } else {
                let transformItem = TransformItem.empty(with: group)
                setTransformItem(transformItem, in: group, cutEntity)
                oldTransform = transformItem.transform
                isMadeTransformItem = true
            }
            self.group = group
            self.cutEntity = cutEntity
            keyIndex = group.editKeyframeIndex
            setTransform(t, at: keyIndex, in: group, cutEntity)
        case .sending:
            if let group = group, let cutEntity = cutEntity {
                let t = transformWith(value: value, slider: slider, oldTransform: transform)
                setTransform(t, at: keyIndex, in: group, cutEntity)
            }
        case .end:
            if let group = group, let cutEntity = cutEntity {
                let t = transformWith(value: value, slider: slider, oldTransform: transform)
                setTransform(t, at: keyIndex, in: group, cutEntity)
                if let transformItem = group.transformItem {
                    if transformItem.isEmpty {
                        if isMadeTransformItem {
                            setTransformItem(nil, in: group, cutEntity)
                        } else {
                            setTransformItem(nil, oldTransformItem: oldTransformItem, in: group, cutEntity)
                        }
                    } else {
                        if isMadeTransformItem {
                            setTransformItem(transformItem, oldTransformItem: oldTransformItem, in: group, cutEntity)
                        }
                        if value != oldValue {
                            setTransform(t, oldTransform: oldTransform, at: keyIndex, in: group, cutEntity)
                        } else {
                            setTransform(oldTransform, at: keyIndex, in: group, cutEntity)
                        }
                    }
                }
            }
            undoManager?.endUndoGrouping()
        }
    }
    private func transformWith(value: CGFloat, slider: Slider, oldTransform t: Transform) -> Transform {
        let b = sceneEditor.scene.cameraFrame
        switch slider {
        case xSlider:
            return t.withPosition(CGPoint(x: value*b.width, y: t.position.y))
        case ySlider:
            return t.withPosition(CGPoint(x: t.position.x, y: value*b.height))
        case zSlider:
            return t.withScale(value)
        case thetaSlider:
            return t.withRotation(value*(.pi/180))
        case wiggleXSlider:
            return t.withWiggle(t.wiggle.withMaxSize(CGSize(width: value*b.width/10, height: t.wiggle.maxSize.height)))
        case wiggleYSlider:
            return t.withWiggle(t.wiggle.withMaxSize(CGSize(width: t.wiggle.maxSize.width, height: value*b.height/10)))
        default:
            return t
        }
    }
    private func setTransformItem(_ transformItem: TransformItem?, in group: Group, _ cutEntity: CutEntity) {
        group.transformItem = transformItem
        sceneEditor.timeline.setNeedsDisplay()
    }
    private func setTransform(_ transform: Transform, at index: Int, in group: Group, _ cutEntity: CutEntity) {
        group.transformItem?.replaceTransform(transform, at: index)
        cutEntity.cut.updateCamera()
        if cutEntity === sceneEditor.canvas.cutEntity {
            sceneEditor.canvas.updateViewAffineTransform()
        }
        self.transform = transform
    }
    private func setTransformItem(_ transformItem: TransformItem?, oldTransformItem: TransformItem?, in group: Group, _ cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0.setTransformItem(oldTransformItem, oldTransformItem: transformItem, in: group, cutEntity) }
        setTransformItem(transformItem, in: group, cutEntity)
        cutEntity.isUpdate = true
    }
    private func setTransform(_ transform: Transform, oldTransform: Transform, at i: Int, in group: Group, _ cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0.setTransform(oldTransform, oldTransform: transform, at: i, in: group, cutEntity) }
        setTransform(transform, at: i, in: group, cutEntity)
        cutEntity.isUpdate = true
    }
}

final class SoundEditor: View {
    var sceneEditor: SceneEditor!
    var scene = Scene() {
        didSet {
            updateSoundText(with: scene.soundItem.sound)
        }
    }
    var textLine: TextLine {
        didSet {
            layer.setNeedsDisplay()
        }
    }
    let drawLayer: DrawLayer
    
    init() {
        drawLayer = DrawLayer(fillColor: Defaults.subBackgroundColor.cgColor)
        textLine = TextLine(string: "No Sound".localized, font: Defaults.smallFont, color: Defaults.smallFontColor.cgColor, isVerticalCenter: true)
        
        super.init(layer: drawLayer)
        
        drawLayer.drawBlock = { [unowned self] ctx in
            if self.scene.soundItem.isHidden {
                ctx.setAlpha(0.25)
            }
            self.textLine.draw(in: self.bounds, in: ctx)
        }
        layer.frame = SceneLayout.soundFrame
    }
    
    override func delete() {
        if scene.soundItem.sound != nil {
            setSound(nil, name: "")
        } else {
            screen?.tempNotAction()
        }
    }
    override func copy() {
        if let sound = scene.soundItem.sound {
            sound.write(to: NSPasteboard.general())
        } else {
            screen?.tempNotAction()
        }
    }
    override func paste() {
        if let sound = NSSound(pasteboard: NSPasteboard.general()) {
            setSound(sound, name: NSPasteboard.general().string(forType: NSPasteboardTypeString) ?? "")
        } else {
            screen?.tempNotAction()
        }
    }
    func setSound(_ sound: NSSound?, name: String) {
        undoManager?.registerUndo(withTarget: self) { [os = scene.soundItem.sound, on = scene.soundItem.name] in $0.setSound(os, name: on) }
        if sound == nil && scene.soundItem.sound?.isPlaying ?? false {
            scene.soundItem.sound?.stop()
        }
        scene.soundItem.sound = sound
        scene.soundItem.name = name
        updateSoundText(with: sound)
        sceneEditor.sceneEntity.isUpdatePreference = true
    }
    func updateSoundText(with sound: NSSound?) {
        if sound != nil {
            textLine.string = "♫ \(scene.soundItem.name)"
        } else {
            textLine.string = "No Sound".localized
        }
        layer.setNeedsDisplay()
    }
    
    override func show() {
        if scene.soundItem.isHidden {
            setIsHidden(false)
        } else {
            screen?.tempNotAction()
        }
    }
    override func hide() {
        if !scene.soundItem.isHidden {
            setIsHidden(true)
        } else {
            screen?.tempNotAction()
        }
    }
    func setIsHidden(_ isHidden: Bool) {
        undoManager?.registerUndo(withTarget: self) { [oh = scene.soundItem.isHidden] in $0.setIsHidden(oh) }
        scene.soundItem.isHidden = isHidden
        layer.setNeedsDisplay()
        sceneEditor.sceneEntity.isUpdatePreference = true
    }
}

final class SpeechEditor: View, TextEditorDelegate {
    weak var sceneEditor: SceneEditor!
    var text = Text() {
        didSet {
            if text !== oldValue {
                textEditor.string = text.string
            }
        }
    }
    private let textEditor = TextEditor(frame: CGRect())
    override init(layer: CALayer = CALayer.interfaceLayer()) {
        super.init(layer: layer)
        layer.frame = CGRect()
        textEditor.delegate = self
        children = [textEditor]
    }
    func update() {
        text = sceneEditor.timeline.selectionCutEntity.cut.editGroup.textItem?.text ?? Text()
    }
    
    private var textPack: (oldText: Text, textItem: TextItem)?
    func changeText(textEditor: TextEditor, string: String, oldString: String, type: Action.SendType) {
    }
    private func _setTextItem(_ textItem: TextItem?, oldTextItem: TextItem?, in group: Group, _ cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0._setTextItem(oldTextItem, oldTextItem: textItem, in: group, cutEntity) }
        group.textItem = textItem
        cutEntity.isUpdate = true
        sceneEditor.timeline.setNeedsDisplay()
    }
    private func _setText(_ text: Text, oldText: Text, at i: Int, in group: Group, _ cutEntity: CutEntity) {
        undoManager?.registerUndo(withTarget: self) { $0._setText(oldText, oldText: text, at: i, in: group, cutEntity) }
        group.textItem?.replaceText(text, at: i)
        group.textItem?.text = text
        sceneEditor.canvas.updateViewAffineTransform()
        sceneEditor.canvas.isUpdate = true
        self.text = text
    }
}