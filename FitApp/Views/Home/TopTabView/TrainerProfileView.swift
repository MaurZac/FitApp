//
//  TrainerProfileView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct TrainerProfileView: View {
    @State var isTrainer = true
    var body: some View {
        ZStack{
            VStack(spacing:0){
                DefaultHeader(title: "")
                
                ScrollView{
                    LazyVStack(spacing: 15){
                        HStack(spacing: 15){
                            Image("t_profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 4){
                                Text("Mauricio Zarate")
                                    .font(.customFont(.semiBold, fontSize: 18))
                                    .maxLeft
                                
                                Text("Specialization in Fitness")
                                    .font(.customFont(.light, fontSize: 12))
                                    .maxLeft
                                
                                HStack(spacing: 15){
                                    Button(action: {
                                        
                                    }, label: {
                                        Text("Mauricio Zarate")
                                            .font(.customFont(.semiBold, fontSize: 15))
                                            .maxCenter
                                    })
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background(Color.primaryApp)
                                    .cornerRadius(10)
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Contact")
                                            .font(.customFont(.semiBold, fontSize: 15))
                                            .maxCenter
                                    }
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background(Color.primaryApp)
                                    .cornerRadius(10)

                                }
                                
                                HStack{
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                        
                                    Text("Mexico")
                                        .font(.customFont(.light, fontSize: 12))
                                        .maxLeft
                                }
                                
                            }
                        }
                        
                        HStack(spacing: 15){
                            VStack{
                                Text("4/5")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Rating")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("78")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Following")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("5645")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Followers")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        
                        HStack{
                            Button {
                                
                            } label: {
                                Image("color_fb")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                            }
                            .maxCenter
                            
                            Button {
                                
                            } label: {
                                Image("in")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                            }
                            .maxCenter
                            
                            Button {
                                
                            } label: {
                                Image("yt")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                            }
                            .maxCenter

                        }
                        
                        Divider()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Certifications")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Advance Trainer Certification CONADE")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background(Color.txtBG)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1))

                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Awards")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Best in Muscle Building")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background(Color.txtBG)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1))
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Publish Articles")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Why Breathing is neccesary while Gyming")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background(Color.txtBG)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1))

                        Button {
                            
                        } label: {
                            VStack{
                                Text("Conferences and Expos Attended")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("CONADE 2019")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background(Color.txtBG)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1))
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text(isTrainer ? "Personal Training Client and Feedback " : "Feedback")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Strict, Calm in Nature")
                                    .font(.customFont(.bold, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background(Color.txtBG)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1))
                    }
                    .foregroundColor(.primaryText)
                    .horizontal20
                    .vertical15
                }
            }
            
        }
        .navHide
    }
}

#Preview {
    TrainerProfileView()
}
