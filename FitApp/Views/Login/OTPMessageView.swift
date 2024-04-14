//
//  OTPMessageView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/13/24.
//

import SwiftUI

struct OTPMessageView: View {
    @State var showOTP = false
    @State var txtOTP = "1234"
    @State private var timeRamaining = 30
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 20){
                    Text("Enter the code that was send to your\nEntered Mobile Number")
                        .multilineTextAlignment(.center)
                        .maxCenter
                        .foregroundColor(.primaryText)
                        .top15
                    ZStack {
                        HStack(spacing: 20){
                            
                            Spacer()
                            
                            let otpCode = txtOTP.map{String($0)}
                            ForEach(0..<4){
                                index in
                                VStack{
                                    if(index < otpCode.count){
                                        Text(otpCode[index])
                                            .font(.customFont(.bold, fontSize: 25))
                                            .maxCenter
                                    }else {
                                        Text("")
                                            .font(.customFont(.bold, fontSize: 25))
                                            .maxCenter
                                    }
                                }
                                .frame(width: 60, height: 60)
                                .foregroundColor(.primaryText)
                                .background(Color.txtBG)
                                .overlay(RoundedRectangle(cornerRadius: 30.0).stroke(Color.board, lineWidth: 1))
                            }                            
                            Spacer()
                            
                        }
                        TextField("", text: $txtOTP)
                            .keyboardType(.phonePad)
                            .frame(height: 50)
                            .foregroundColor(.clear)
                            .accentColor(.clear)
                    }
                  
                    
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
                    .cornerRadius(25)
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Change Number")
                                .font(.customFont(.regular, fontSize: 12))
                                .foregroundColor(.secondaryText)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Resend (\(timeRamaining))")
                                .font(.customFont(.regular, fontSize: 12))
                                .foregroundColor(Color(hex: "8E44AD"))
                                .onReceive(timer, perform: { time in
                                    if(timeRamaining>0){
                                        timeRamaining -= 1
                                    }
                                })
                        })
                        
                    }
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
    OTPMessageView()
}
