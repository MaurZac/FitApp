//
//  WorkoutPlanTabView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/1/24.
//

import SwiftUI

struct WorkoutPlanTabView: View {
    @State var mArr = ["wp_1", "wp_2"]
    @State var gArr = ["wp_3", "wp_4"]
    
    @State var showFind = false
    @State var showCreate = false
    @State var showDetail = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 15){
                    IconTitleSubtitleButton(icon: "search_circle", title: "Find a Workout plan", subtitle: "Perfect Workout plan that fulfill your fitness goal"){
                        showFind = true
                       
                    }
                    Button {
                        
                    } label: {
                        Text("My Plan")
                            .font(.customFont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(Color.primaryApp)
                    .cornerRadius(15)
                    .horizontal20

                    
                    IconTitleSubtitleButton(icon: "add_big", title: "Create New Plan", subtitle: "Customize workout plans as per your need"){
                        showCreate = true
                    }
                    
                    VStack(spacing: 8){
                        SectionMoreButtonsView(title: "Muscle Building") {
                            showDetail = true
                        }
                        
                        ScrollView{
                            VStack(spacing: 15){
                                ScrollView(.horizontal, showsIndicators: true){
                                    LazyHStack(spacing: 15){
                                        ForEach(0..<mArr.count, id:\.self){
                                            index in
                                            
                                            Image(mArr[index])
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.4))
                                                .cornerRadius(15)
                                            
                                        }
                                    }
                                    .horizontal20
                                }
                            }
                        }
                        
                        SectionMoreButtonsView(title: "Gain Strength") {
                            showDetail = true
                        }
                                    
                        ScrollView{
                            VStack(spacing: 15){
                                ScrollView(.horizontal, showsIndicators: true){
                                    LazyHStack(spacing: 15){
                                        ForEach(0..<gArr.count, id:\.self){
                                            index in
                                            
                                            Image(gArr[index])
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.4))
                                                .cornerRadius(15)
                                            
                                        }
                                    }
                                    .horizontal20
                                }
                            }
                        }
                    }
                }
                .vertical15
                .bottomWithSafe
                
            }
        }
        .bgNavLink(content: FindWorkoutPlanView(), isAction: $showFind)
        .bgNavLink(content: CreatePlanView(), isAction: $showCreate)
        .bgNavLink(content: WorkoutDetailView(), isAction: $showDetail)
    }
}

#Preview {
    WorkoutPlanTabView()
}
