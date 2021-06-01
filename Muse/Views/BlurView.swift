//
//  BlurView.swift
//  Muse
//
//  Created by Terry Kuo on 2021/6/1.
//

import SwiftUI

public struct BlurView: UIViewRepresentable {
    
    public init(style: UIBlurEffect.Style = .regular) {
        self.style = style
    }
    
    let style: UIBlurEffect.Style
    
    public func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

public class Haptics {
    
    static private let shared = Haptics()
    private let softHammer = UIImpactFeedbackGenerator(style: .soft)
    private let hardHammer = UIImpactFeedbackGenerator(style: .light)
    private init () {
        softHammer.prepare()
        hardHammer.prepare()
    }
    
    public static func sofrRoll() {
        shared.softHammer.impactOccurred(intensity: 0.8)
    }
    
    public static func hit() {
        shared.hardHammer.impactOccurred(intensity: 0.9)
    }
}
