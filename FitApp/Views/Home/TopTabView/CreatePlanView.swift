//
//  CreatePlanView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/1/24.
//

import SwiftUI

struct CreatePlanView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var txtPlanName = ""
    @State var selectGoal: NSDictionary?
    @State var selectLevel: NSDictionary?
    @State var selectDuration: NSDictionary?

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text("Find a Workout Plan")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 25) {
                    TextField("Plan Name", text: $txtPlanName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.board, lineWidth: 1))
                    
                   RoundDropDown(select: $selectGoal, placeholder: "Choose Goal", listArr: [["name": "Goal 1"], ["name": "Goal 2"], ["name": "Goal 3"], ])
                    RoundDropDown(select: $selectDuration, placeholder: "Days per Week", listArr: [["name": " 1"], ["name": " 2"], ["name": " 3"], ])
                    RoundDropDown(select: $selectLevel, placeholder: "Choose Level", listArr: [["name": "Level 1"], ["name": "Level 2"], ["name": "Level 3"], ])
                        .bottom15
                    
                    Button {
                        
                    } label: {
                        Text("ADD")
                            .font(.customFont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                    .horizontal20
                    
                }
                .horizontal20
                .all15
                
                Spacer()
            }
            
        }
        .navHide
    }
}

#Preview {
    CreatePlanView()
}
