//
//  SettingsView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/15/24.
//

import SwiftUI

struct SettingsView: View {
    
    @State var showProfile  = false
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Setting")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                    VStack(spacing: 25){
                        SettingRowView(title: "Profile", icon: "user_placeholder", isIconCircle: true){
                            showProfile = true
                        }
                        SettingRowView(title: "Language options", icon: "language", value: "Eng"){
                            
                        }
                        SettingRowView(title: "Health Data", icon: "language"){
                            
                        }
                        SettingRowView(title: "Notification", icon: "notification", value: "On"){
                            
                        }
                        SettingRowView(title: "Refer a Friend", icon: "share"){
                            
                        }
                        SettingRowView(title: "Feedback", icon: "feedback"){
                            
                        }
                        SettingRowView(title: "Rate us", icon: "rating"){
                            
                        }
                        SettingRowView(title: "Log out", icon: "logout"){
                            
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .bgNavLink(content: ProfileView(), isAction: $showProfile)
        .navHide
    }
}

#Preview {
    NavigationView{
        SettingsView()
    }
   
}
