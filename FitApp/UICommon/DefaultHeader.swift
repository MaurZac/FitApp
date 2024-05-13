//
//  DefaultHeader.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/11/24.
//

import SwiftUI

struct DefaultHeader: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var title: String
    @State var extraButton = false
    var body: some View {
        HStack{
            Button {
                mode.wrappedValue.dismiss()
            } label: {
                Image("back_white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
            }
            Text(title)
                .font(.customFont(.regular, fontSize: 18))
                .maxLeft
            if extraButton{
                Button(action: {
                    
                }, label: {
                    Text("Reset")
                        .font(.customFont(.regular, fontSize: 14))
                        .maxLeft
                })
            }
            
        }
        .foregroundColor(Color.white)
        .horizontal20
        .vertical15
        .topWithSafe
        .background(Color.secondaryApp)
        
        
    }
}

#Preview {
    DefaultHeader(title: "",extraButton: false)
}
