//
//  NotificationsView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/15/24.
//

import SwiftUI

struct NotificationsView: View {
    @State var listArr = [
        "New Exercises and Plans Updated",
        "You just Consulted with our Nutritioni...",
        "Your Mobile Number is Updated",
        "Health Tips - why Breating is important",
        "You just Complete the Pushups Ch..."
    ]
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Text("Notification")
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
                            ForEach(0..<listArr.count, id: \.self){
                                index in
                                VStack(spacing: 0){
                                    Text(listArr[index])
                                        .font(.customFont(.semiBold, fontSize: 15))
                                        .maxLeft
                                    
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
                    
                }
            }
        }.navHide
    }
}

#Preview {
    NotificationsView()
}
