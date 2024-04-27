//
//  ExercisesView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/26/24.
//

import SwiftUI

struct ExercisesTabView: View {
    private var colum = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15),
    ]
    @State var showList = false
    
    @State var listArr = [
        [
            "title": "Chest",
            "subtitle": "16 Exercises",
            "image": "ex_1"
        ],
        [
            "title": "Back",
            "subtitle": "16 Exercises",
            "image": "ex_2"
        ],
        [
            "title": "Biceps",
            "subtitle": "16 Exercises",
            "image": "ex_3"
        ],
        [
            "title": "Triceps",
            "subtitle": "16 Exercises",
            "image": "ex_4"
        ],
        [
            "title": "Shoulders",
            "subtitle": "16 Exercises",
            "image": "ex_5"
        ],
        [
            "title": "Abs",
            "subtitle": "16 Exercises",
            "image": "ex_6"
        ],
        [
            "title": "Legs",
            "subtitle": "16 Exercises",
            "image": "ex_7"
        ],
        [
            "title": "Chest",
            "subtitle": "16 Exercises",
            "image": "ex_8"
        ]
    ]
    var body: some View {
        ZStack{
            ScrollView{
                LazyVGrid(columns: colum, content: {
                    ForEach(0..<listArr.count, id:\.self){
                        index in
                        let obj = listArr[index]
                        
                        Button {
                            showList = true
                        } label: {
                            ZStack(alignment: .bottomLeading){
                                Image(obj["image"] ?? "")
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fill)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                
                                VStack{
                                    Text(obj["title"] ?? "")
                                        .font(.customFont(.semiBold, fontSize: 15))
                                        .maxCenter
                                    
                                    Text(obj["subtitle"] ?? "")
                                        .font(.customFont(.regular, fontSize: 10))
                                        .maxCenter
                                    
                                }
                                .foregroundColor(Color.primaryText)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.primaryApp)
                                .cornerRadius(15, corner: [.bottomLeft])
                                .cornerRadius(30, corner: [.topRight])
                                .padding(.trailing, 20)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fill)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(radius: 2)
                        }
                    }
                    
                })
                .all15
            }
        }
        .bgNavLink(content: ExercisesListView(), isAction: $showList)
    }
}

#Preview {
    ExercisesTabView()
}
