//
//  TopTapView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/16/24.
//

import SwiftUI

struct TopTapView: View {
    @State var selectTab = 0
    @State var tabnameArr = [
        "Health Tip",
        "Exercises",
        "Workout Plan",
        "Challenges",
        "Trainers",
        "Diet"
        
    ]
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack{
                    Text("FitApp")
                        .font(.customFont(.regular, fontSize: 20))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                .padding(.bottom, 0.5)
                
                ScrollView(.horizontal){
                    LazyHStack(spacing: 0){
                        ForEach(0..<tabnameArr.count, id: \.self){
                            index in
                            Button(action: {
                                withAnimation {
                                    selectTab = index
                                }
                            }, label: {
                                VStack{
                                    Spacer()
                                    Text(tabnameArr[index])
                                        .font(.customFont(.regular, fontSize: 18))
                                        .foregroundColor(index == selectTab ? Color.primaryApp : Color.white)
                                        .horizontal20
                                    Spacer()
                                    Rectangle()
                                        .fill(index == selectTab ? Color.primaryApp : Color.white)
                                        .frame(height: 2, alignment: .bottom)
                                        .horizontal15
                                        .shadow(radius: 2)
                                }
                            })
                        }
                    }
                }
                .frame(height: 50)
                .background(Color.secondaryApp)
                
                TabView(selection: $selectTab,
                        content:  {
                    HealthTipView().tag(0)
                    ExercisesTabView().tag(1)
                    WorkoutPlanTabView().tag(2)
                    ChallenguesTabView().tag(3)
                    TrainerTabView().tag(4)
                    DiatecianTabView().tag(5)
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
                
            }
        }
        .navHide
    }
}

#Preview {
    TopTapView()
}
