//
//  SectionMoreButtonsView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/1/24.
//

import SwiftUI

struct SectionMoreButtonsView: View {
    
    @State var title = ""
    var action: (()->())?
    
    var body: some View {
        HStack {
            Text(title)
                .font(.customFont(.semiBold, fontSize: 15))
                .maxLeft
                .foregroundColor(.primaryText)
            
            Button {
                action?()
            } label: {
                Text("More")
                    .font(.customFont(.regular, fontSize: 12))
            }
            .foregroundColor(Color.primaryApp)

        }
        .horizontal20
    }
}

#Preview {
    SectionMoreButtonsView()
}
