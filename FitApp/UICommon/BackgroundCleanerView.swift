//
//  BackgroundCleanerView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct BackgroundCleanerView: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("test")
    }
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    
    
}

#Preview {
    BackgroundCleanerView()
}
