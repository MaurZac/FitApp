//
//  ProfileView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/15/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                       Image("back")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .padding(8)
                    })
                    Text("Profile")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.primaryText)
                .horizontal20
                .topWithSafe
                
                ScrollView{
                    VStack(spacing: 25){
                        
                        HStack(spacing: 20){
                            Image("user_placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 8){
                                Text("Mauricio Zarate")
                                    .font(.customFont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("5579445035")
                                    .font(.customFont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("maur.mx@gmail.com")
                                    .font(.customFont(.regular, fontSize: 12))
                                    .accentColor(.primaryText)
                                    .maxLeft
                                
                                HStack{
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12,height: 12)
                                    
                                    Text("Mexico")
                                        .font(.customFont(.regular, fontSize: 12))
                                        .accentColor(.primaryText)
                                        .maxLeft
                                }
                                
                            }
                        }
                        SettingRowView(title: "Complete Tasks", icon: "completed_tasks", value: "3"){
                            
                        }
                        SettingRowView(title: "Level", icon: "level", value: "Beginner"){
                            
                        }
                        SettingRowView(title: "Goals", icon: "goal", value: "Mass Gain"){
                            
                        }
                        SettingRowView(title: "Challenges", icon: "challenges", value: "4"){
                            
                        }
                        SettingRowView(title: "Plans", icon: "calendar", value: "2"){
                            
                        }
                        SettingRowView(title: "Fitness Device", icon: "smartwatch", value: "Mi"){
                            
                        }
                        SettingRowView(title: "Refer a Friend", icon: "share"){
                            
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

#Preview {

    ProfileView()
}
