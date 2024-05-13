//
//  WorkOutIntroductionView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/11/24.
//

import SwiftUI

struct WorkoutIntroductionView: View {
    var body: some View {
        ZStack{
            VStack{
                DefaultHeader( title: "Introduction")
                
                ScrollView{
                    LazyVStack(spacing: 25){
                        VStack(spacing:15){
                            Text("Complete the Beginner Program")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                            Text("Descritpion")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                            Text("This is a beginner quick start guide that will move you from day 1 to day 60, providing you with starting and instructions...")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                        }
                        VStack(spacing: 15){
                            Text("Duration")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeHolder)
                            
                            Text("5 Weeks")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                            
                        }
                        
                        VStack(spacing: 15){
                            Text("Goal")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeHolder)
                            
                            Text("Muscle Gaining")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                            
                        }
                        
                        VStack(spacing: 15){
                            Text("Training Level")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeHolder)
                            
                            Text("Beginner")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                            
                        }
                        
                        VStack(spacing: 15){
                            Text("Days per week ")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeHolder)
                            
                            Text("4 Days")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                            
                        }
                        
                        VStack(spacing: 15){
                            Text("Target Gender")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeHolder)
                            
                            Text("Male and Female")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxLeft
                            
                        }
                    }
                    .horizontal15
                    .all15
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

#Preview {
    WorkoutIntroductionView()
}
