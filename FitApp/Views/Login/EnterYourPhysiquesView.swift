//
//  EnterYourPhysiquesView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct EnterYourPhysiquesView: View {
    @State var showAge = false
    @State var showHeight = false
    @State var showWeight = false
    @State var showLevel = false
    @State var showHome = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 25){
                HStack{
                    Text("Enter Your Physique")
                        .font(.customFont(.semiBold, fontSize: 17))
                }
                .top15
                .horizontal20
                .topWithSafe
                
                Button {
                    showAge = true
                } label: {
                    HStack{
                        Text("Age")
                            .font(.customFont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        Text("50 Yt")
                            .font(.customFont(.regular, fontSize: 16))
                            .maxCenter
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background(Color.btnBg)
                .cornerRadius(25)
                
                Button {
                    showHeight = true
                } label: {
                    HStack{
                        Text("Height")
                            .font(.customFont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        Text("1 M 65 cm")
                            .font(.customFont(.regular, fontSize: 16))
                            .maxCenter
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background(Color.btnBg)
                .cornerRadius(25)
                
                Button {
                    showWeight = true
                } label: {
                    HStack{
                        Text("Weight")
                            .font(.customFont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        Text("75 Kg")
                            .font(.customFont(.regular, fontSize: 16))
                            .maxCenter
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background(Color.btnBg)
                .cornerRadius(25)
                
                Button {
                    showLevel = true
                } label: {
                    HStack{
                        Text("Level")
                            .font(.customFont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        Text("Beginner")
                            .font(.customFont(.regular, fontSize: 16))
                            .maxCenter
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background(Color.btnBg)
                .cornerRadius(25)
                
                Button {
                    showHome = true
                } label: {
                    HStack{
                        Text("Confirm Detail")
                            .font(.customFont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background(Color.primaryApp)
                .cornerRadius(25)
                
                Spacer()

            }
            .padding(.horizontal, 50)
        }
        .fullScreenCover(isPresented: $showLevel, content: {
            SelectLevelView()
                .background(BackgroundCleanerView())
        })
        
        .fullScreenCover(isPresented: $showHeight, content: {
            SelectHeightView()
                .background(BackgroundCleanerView())
        })
        
        .fullScreenCover(isPresented: $showWeight, content: {
            SelectWeightView()
                .background(BackgroundCleanerView())
        })
        
        .fullScreenCover(isPresented: $showAge, content: {
            SelectAgeView()
                .background(BackgroundCleanerView())
        })
        .bgNavLink(content: TopTapView(), isAction: $showHome)
        .navHide
        
    }
}

#Preview {
    EnterYourPhysiquesView()
}
