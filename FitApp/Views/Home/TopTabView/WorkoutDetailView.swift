//
//  WorkOutDetailView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/11/24.
//

import SwiftUI

struct WorkoutDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var showIntroduction = false
    @State var showWeek = false
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                DefaultHeader( title: "Muscle Building")
                ScrollView{
                    VStack{
                        ZStack(alignment: .bottom){
                            Image("wp_1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.5))
                                .clipped()
                            
                            HStack(spacing: 8){
                                VStack{
                                    Text("Goal")
                                        .font(.customFont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("Muscle Building")
                                        .font(.customFont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                                VStack{
                                    Text("Duration")
                                        .font(.customFont(.regular, fontSize: 12))
                                        .maxCenter
                                    Text("5 Weeks")
                                        .font(.customFont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                                VStack{
                                    Text("Level")
                                        .font(.customFont(.regular, fontSize: 12))
                                        .maxCenter
                                    Text("Beginner")
                                        .font(.customFont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                            }
                            .vertical8
                            .horizontal20
                            .background(Color.primaryApp)
                            .cornerRadius(25, corner: [.topLeft, .topRight])
                            .horizontal15
                        }
                        
                        Button(action: {
                            showIntroduction = true
                        }, label: {
                            HStack{
                                Text("Introduction")
                                    .font(.customFont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Image("next")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12, height: 12)
                            }
                        })
                        .foregroundColor(.primaryText)
                        .vertical15
                        
                        Text("This is beginner quick start guide that will move you from day 1 to day 60, providing you with stating training and instructions...")
                            .font(.customFont(.regular, fontSize: 13))
                            .maxLeft
                            .bottom15
                        
                        ZStack{
                            Rectangle()
                                .fill(Color.green)
                                .frame(width: (.screenWidth - 40) * 0.3 ,height: 5, alignment: .leading)
                                .maxLeft
                            
                                .cornerRadius(3)
                        }
                        .frame(height: 5)
                        .maxLeft
                        .background(Color.placeHolder)
                        .cornerRadius(3)
                        
                        Text("30% Complete")
                            .font(.customFont(.regular, fontSize: 10))
                            .maxRight
                            .bottom15
                    }
                    .horizontal20
                    
                    LazyVStack(spacing: 15){
                        ForEach(0..<6, id: \.self){
                            index in
                            Button(action: {
                                showWeek = true
                            }, label: {
                                HStack{
                                    HStack(alignment: .firstTextBaseline){
                                        Text("0\(index + 1)")
                                            .font(.customFont(.semiBold, fontSize: 17))
                                            .frame(width: 40,alignment: .center)
                                            .foregroundColor(.placeHolder)
                                        
                                        VStack{
                                            Text("Week")
                                                .font(.customFont(.semiBold, fontSize: 17))
                                                .maxLeft
                                            
                                            Text("This is a beginner quick start.....")
                                                .font(.customFont(.regular, fontSize: 12))
                                                .maxLeft
                                                                                    
                                        }
                                        .foregroundColor(.primaryText)
                                    }
                                    Image("next")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                }
                            })
                            .all15
                            .background(Color.txtBG)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.board, lineWidth: 1))
                        }
                    }
                    .horizontal20
                    .bottomWithSafe
                    
                }
            }
        }
        .bgNavLink(content: WorkoutIntroductionView(), isAction: $showIntroduction)
        .bgNavLink(content: WorkoutWeekDetailView(), isAction: $showWeek)
        .navHide
    }
}

#Preview {
    WorkoutDetailView()
}
