//
//  MobileNumberView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/13/24.
//

import SwiftUI

struct MobileNumberView: View {
    @State var showOTP = false
    @State var txtMobile = ""
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 20){
                    Text("Enter Your Mobile Number")
                        .font(.customFont(.semiBold, fontSize: 18))
                        .maxLeft
                        .topWithSafe
                    
                    TextField("ie. 5579445035", text: $txtMobile)
                        .keyboardType(.phonePad)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button{
                        showOTP = true
                    } label: {
                        Text("VERIFY")
                            .font(.customFont(.semiBold, fontSize: 14))
                            .horizontal15
                        
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25  )
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: OTPMessageView(), isAction: $showOTP)
        .navHide
    }
}

#Preview {
    MobileNumberView()
}
