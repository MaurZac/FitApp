//
//  NameView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/14/24.
//

import SwiftUI

struct NameView: View {
    @State var showGoal = false
    @State var txtName = ""
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 20){
                    Text("Enter Your Name")
                        .font(.customFont(.semiBold, fontSize: 18))
                        .maxLeft
                        .topWithSafe
                    
                    TextField("ie. Mauricio Zarate", text: $txtName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1))
                        .bottom15
                    
                    Button{
                        showGoal = true
                    } label: {
                        Text("NEXT")
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
        .bgNavLink(content: GoalView(), isAction: $showGoal)
        .navHide
    }
}

#Preview {
    NameView()
}
