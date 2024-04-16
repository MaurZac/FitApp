//
//  SettingRowView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/15/24.
//

import SwiftUI

struct SettingRowView: View {
    @State var title = "Setting"
    @State var icon = ""
    @State var value = ""
    @State var isIconCircle = false
    var action: (() -> ())?
    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            HStack(spacing:20){
                if(isIconCircle){
                    Image(icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22,height: 22)
                        .cornerRadius(11)
                }else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22,height: 22)
                        
                }
                Text(title)
                    .font(.customFont(.semiBold, fontSize: 15))
                    .maxLeft
                Text(value)
                    .font(.customFont(.semiBold, fontSize: 15))
                    .maxRight
            }
        })
        .horizontal20
        .foregroundColor(.primaryText)
        .background(Color.txtBG)
        .cornerRadius(5)
        
    }
}

#Preview {
    SettingRowView()
}
