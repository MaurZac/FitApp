//
//  SelectLevelView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct SelectLevelView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var select = 0
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black.opacity(0.7))
            
            VStack{
                
                Spacer()
                VStack(spacing: 15){
                    Text("Select Your Level")
                        .font(.customFont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    Button {
                        select = 0
                    } label: {
                        HStack(spacing: 25){
                            Rectangle()
                                .fill(select == 0 ? Color.primaryApp : Color.placeHolder)
                                .frame(width: 20, height: 20)
                                .cornerRadius(10)
                            Text("Beginner")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                        }
                    }
                    
                    Button {
                        select = 1
                    } label: {
                        HStack(spacing: 25){
                            Rectangle()
                                .fill(select == 1 ? Color.primaryApp : Color.placeHolder)
                                .frame(width: 20, height: 20)
                                .cornerRadius(10)
                            Text("Intermediate")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                        }
                    }
                    
                    Button {
                        select = 2
                    } label: {
                        HStack(spacing: 25){
                            Rectangle()
                                .fill(select == 2 ? Color.primaryApp : Color.placeHolder)
                                .frame(width: 20, height: 20)
                                .cornerRadius(10)
                            Text("Advanced")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                        }
                    }



                
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Text("Done")
                            .font(.customFont(.bold, fontSize: 15))
                            .maxLeft
                    }
                    .foregroundColor(.primaryApp)

                }
                .horizontal20
                .foregroundColor(.primaryText)
                .all15
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                .frame(width: .widthPer(per: 0.7))
                
                Spacer()
            }
        }
        .navHide
    }
}

#Preview {
    SelectLevelView()
}
