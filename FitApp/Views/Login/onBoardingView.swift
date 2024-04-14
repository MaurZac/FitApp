//
//  onBoardingView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/13/24.
//

import SwiftUI

struct onBoardingView: View {
    @State private var selectPage = 0
    @State var pageArr = [
        [
            "title": "Excercises",
            "subtitle": "To Your Personalized Profile",
            "image": "in_1"
        ],
        [
            "title": "Keep Eye On Health\nTracking",
            "subtitle": "Log & reminder your activities",
            "image": "in_2"
        ],
        [
            "title": "Check Your Progress",
            "subtitle": "An tracking calendar",
            "image": "in_3"
        ]
    ]
    
    var body: some View {
        ZStack(alignment: .center){
            TabView(selection: $selectPage.animation() {
                ForEach(0..<pageArr.count, id: \.self){
                    index in
                    var iObj = pageArr[index]
                }
            })
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Skip")
                            .font(.customFont(.light, fontSize: 12))
                            .horizontal15
                            .vertical8
                    })
                    .foregroundColor(.secondaryText)
                    .background(Color.txtBG)
                    .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                    
                }
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("NEXT")
                        .font(.customFont(.semiBold, fontSize: 14))
                        .horizontal15
                        
                })
                .foregroundColor(.btnPrimaryText)
                .frame(width: 150,height: 50)
                .background(Color.primaryApp)
                .cornerRadius(25)
            }
            .topWithSafe
            .horizontal15
            .bottomWithSafe
        }
        .navHide
    }
}

#Preview {
    onBoardingView()
}
