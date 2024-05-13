//
//  WorkoutDayExercisesView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/11/24.
//

import SwiftUI

struct WorkoutDayExercisesView: View {
    
    @State var listArr = [
            [ "name": "Bench Press",
              "sets": "3",
              "reps": "12 - 10 - 0",
              "rest": "30 Sec",
              "image": "d1",
              "is_complete": false,
            ],[
              "name": "Bench Press",
              "sets": "3",
              "reps": "12 - 10 - 0",
              "rest": "30 Sec",
              "image": "d2",
              "is_complete": true,
            ],[
              "name": "Bench Press",
              "sets": "3",
              "reps": "12 - 10 - 0",
              "rest": "30 Sec",
              "image": "d3",
              "is_complete": false,
            ],[
              "name": "Bench Press",
              "sets": "3",
              "reps": "12 - 10 - 0",
              "rest": "30 Sec",
              "image": "d4",
              "is_complete": false,
            ],[
              "name": "Bench Press",
              "sets": "3",
              "reps": "12 - 10 - 0",
              "rest": "30 Sec",
              "image": "d5",
              "is_complete": false,
            ],
          ]
    @State var showDetail = false
    var body: some View {
        ZStack{
            VStack{
                DefaultHeader( title: "Week 1 - Day 1",extraButton: true)
                ScrollView{
                    LazyVStack(spacing: 15){
                        ForEach(0..<listArr.count, id: \.self){
                            index in
                            
                            let obj = listArr[index]
                            let isComplete = obj["is_complete"] as? Bool ?? false
                            Button {
                                showDetail = true
                            } label: {
                                VStack{
                                    HStack(spacing: 8){
                                        Image(obj["image"] as? String ?? "")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .cornerRadius(10)
                                        
                                        VStack(spacing: 4){
                                            Text(obj["name"] as? String ?? "")
                                                .font(.customFont(.semiBold, fontSize: 12))
                                                .maxLeft
                                            HStack{
                                                Text("Sets")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .frame(width: 50, alignment: .leading)
                                                    
                                                
                                                Text(obj["sets"] as? String ?? "")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .maxLeft
                                            }
                                            HStack{
                                                Text("Reps")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .frame(width: 50, alignment: .leading)
                                                    
                                                
                                                Text(obj["reps"] as? String ?? "")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .maxLeft
                                            }
                                            
                                            HStack{
                                                Text("Rest")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .frame(width: 50, alignment: .leading)
                                                    
                                                
                                                Text(obj["rest"] as? String ?? "")
                                                    .font(.customFont(.semiBold, fontSize: 12))
                                                    .maxLeft
                                            }
                                            
                                        }
                                        .foregroundColor(.primaryText)
                                        .padding(.leading, 25)
                                        
                                        Image("next")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                        
                                    }
                                    .vertical8
                                    .horizontal20
                                    
                                   Divider()
                                    HStack{
                                        Image(isComplete ? "check_tick" : "uncheck")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                        
                                        Text("Make as Completed")
                                            .font(.customFont(.regular, fontSize: 17))
                                            .foregroundColor(isComplete ? .green : .placeHolder)
                                    }
                                    .maxCenter
                                    .horizontal15
                                    .vertical8
                                }
                                .background(Color.txtBG)
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.board,lineWidth: 1))
                                
                                
                            }
                            .vertical8
                            .horizontal20
                            
                        }
                    }
                    .all15
                    .bottomWithSafe
                }
            }
        }
        .navHide
        .bgNavLink(content: ExerciseDetailView(), isAction: $showDetail)
    }
}

#Preview {
    WorkoutDayExercisesView()
}
