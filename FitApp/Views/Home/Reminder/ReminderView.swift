//
//  ReminderView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/15/24.
//

import SwiftUI

struct ReminderView: View {
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Text("Reminder")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ZStack(alignment: .bottomTrailing){
                    
                    ScrollView {
                        LazyVStack(spacing: 15){
                            ForEach(0..<10, id: \.self){
                                index in
                                VStack(spacing: 0){
                                    HStack{
                                        Text("Workout Reminder")
                                            .font(.customFont(.semiBold, fontSize: 15))
                                            .maxLeft
                                        
                                        Toggle(isOn: .constant(true), label: {
                                            
                                        })
                                    }
                                    Text("06 : 00 AM")
                                        .font(.customFont(.semiBold, fontSize: 15))
                                        .maxLeft
                                    
                                    HStack{
                                        Text("Repeat")
                                            .font(.customFont(.medium, fontSize: 13))
                                            .foregroundColor(.primaryApp)
                                        Text("-")
                                            .font(.customFont(.regular, fontSize: 13))
                                            .foregroundColor(.secondaryText)
                                        Text("Mon, Tue, Fri")
                                            .font(.customFont(.regular, fontSize: 13))
                                            .foregroundColor(.primaryText)
                                            .maxLeft
                                        
                                        Button(action: {
                                            
                                        }, label: {
                                            Image("delete")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                        })
                                    }
                                }
                                .all15
                                .background(Color.txtBG)
                                .cornerRadius(15)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.board, lineWidth: 1))
                            }
                            
                        }
                    }
                    .horizontal20
                    .vertical15
                    .bottomWithSafe
                    
                    Button(action: {
                        
                    }, label: {
                        Image("add_big")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50,height: 50)
                    })
                    .bottomWithSafe
                    .horizontal20
                    
                }
            }
        }.navHide
    }
}

#Preview {
    ReminderView()
}
