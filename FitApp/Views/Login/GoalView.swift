//
//  GoalView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/14/24.
//

import SwiftUI

struct GoalView: View {
    
    @State var listArrr = [
        ["name":"Fat Loss"],
        ["name":"Weight Gain"],
        ["name":"Muscle Gain"],
        ["name":"Other"]
    ]
    
    @State var showValue = false
    @State var selectIndex = 0
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 20){
                    Text("Select Your Goal")
                        .font(.customFont(.semiBold, fontSize: 18))
                        .maxLeft
                        .topWithSafe
                    
                    ForEach(0..<listArrr.count, id:\.self){
                        index in
                        Button(action: {
                            selectIndex =  index
                        }, label: {
                            Image(selectIndex == index ? "radio_select" : "radio_unselect")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 20)
                            Text(listArrr[index]["name"] ?? "")
                                .font(.customFont(.regular, fontSize: 14))
                                .maxCenter
                        })
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                    }
                    
                    Button{
                        showValue = true
                    } label: {
                        Text("Done")
                            .font(.customFont(.semiBold, fontSize: 14))
                            .horizontal15
                        
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25  )
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: EnterYourPhysiquesView(), isAction: $showValue)
        .navHide
    }
}
#Preview {
    GoalView()
}
