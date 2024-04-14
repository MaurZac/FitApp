//
//  SignUpView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/13/24.
//

import SwiftUI

struct SignUpView: View {
    @State var showMobile = false
    var body: some View {
        ZStack{
            VStack(spacing: 30){
                Spacer()
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.7))
                    .padding(.bottom, .widthPer(per: 0.1))
                Button(action: {
                    showMobile = true
                }, label: {
                    Image("phone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 20)
                    Text("Mobile Number")
                        .font(.customFont(.regular, fontSize: 14))
                        .maxCenter
                })
                .horizontal20
                .frame(height: 50)
                .foregroundColor(.primaryText)
                .background(Color.txtBG)
                .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                
                HStack(spacing: 20){
                    Button(action: {
                        
                    }, label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        Text("Facebook")
                            .font(.customFont(.regular, fontSize: 14))
                            .maxCenter
                    })
                    .horizontal20
                    .frame(height: 35)
                    .foregroundColor(.primaryText)
                    .background(Color(hex: "3A91F7"))
                    .cornerRadius(25)
                    
                    Button(action: {
                        
                    }, label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        Text("Google")
                            .font(.customFont(.regular, fontSize: 14))
                            .maxCenter
                    })
                    .horizontal20
                    .frame(height: 35)
                    .foregroundColor(.primaryText)
                    .background(Color.txtBG)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                }
                
                Spacer()
            }
            .horizontal20
            .topWithSafe
            .bottomWithSafe
        }
        .bgNavLink(content: MobileNumberView(), isAction: $showMobile)
        .navHide
        
    }
}

#Preview {
    SignUpView()
}
