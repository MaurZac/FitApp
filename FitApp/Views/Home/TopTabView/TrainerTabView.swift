//
//  TrainerTabView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct TrainerTabView: View {
    @State var showDetail = false
    @State var listArr = [
            [
                  "name": "Ashish Chutake",
                  "detail": "Fitness and Physiotheraphy",
                  "image": "t1",
                  "rate": 4,
                  "location": "Mumbai"
                ],[
                  "name": "Ann Mathewys ",
                  "detail": "Weight Loss",
                  "image": "t2",
                  "rate": 4,
                  "location": "Nagpur"
                ],[
                  "name": "Lalit Kalambe",
                  "detail": "Fitness and Physiotheraphy",
                  "image": "t3",
                  "rate": 4,
                  "location": "Mumbai"
                ],[
                  "name": "Aditya Khobragade",
                  "detail": "power gaining",
                  "image": "t4",
                  "rate": 4,
                  "location": "Bangalore"
                ],[
                  "name": "Ashish Chutake",
                  "detail": "Fitness and Physiotheraphy",
                  "image": "t5",
                  "rate": 4,
                  "location": "Chennai"
                ],[
                  "name": "Darshan Barapatre",
                  "detail": "Mass gain",
                  "image": "t6",
                  "rate": 4,
                  "location": "Delhi"
                ],[
                  "name": "Saurabh Bhoyar",
                  "detail": "Fitness and Physiotheraphy",
                  "image": "t7",
                  "rate": 4,
                  "location": "Mumbai"
                ]
        ]
    var body: some View {
        ZStack{
            ScrollView{
                LazyVStack(spacing: 15){
                    ForEach(0..<listArr.count, id: \.self) {
                        index in
                        let obj = listArr[index]
                        
                        Button(action: {
                            showDetail = true
                        }, label: {
                            HStack(spacing: 15){
                                Image(obj["image"] as? String ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(25)
                                
                                VStack(spacing: 0){
                                    Text(obj["name"] as? String ?? "")
                                        .font(.customFont(.medium, fontSize: 15))
                                        .maxLeft
                                    
                                    Text(obj["detail"] as? String ?? "")
                                        .font(.customFont(.light, fontSize: 12))
                                        .maxLeft
                                    
                                    HStack(spacing: 8){
                                        ForEach(0..<(obj["rate"] as? Int ?? 0), id: \.self){
                                            index in
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 12))
                                                .foregroundColor(.yellow)
                                        }
                                        
                                        Spacer()
                                        Image("location")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12,height: 12)
                                        
                                        Text(obj["location"] as? String ?? "")
                                            .font(.customFont(.light, fontSize: 12))
                                        
                                    }
                                }
                                
                            }
                        })
                        .all15
                        .maxLeft
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    }
                }
                .all15
            }
        }
        .bgNavLink(content: TrainerProfileView(), isAction: $showDetail)
    }
}

#Preview {
    TrainerTabView()
}
