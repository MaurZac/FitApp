//
//  SelectWeightView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct SelectWeightView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var select = 1
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black.opacity(0.7))
            
            VStack{
                
                Spacer()
                VStack(spacing: 15){
                    Text("Select Your Weight")
                        .font(.customFont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    Picker("", selection: $select){
                        ForEach(20...150, id: \.self){
                            number in
                            
                            Text("\(number) Kg")
                                .tag("\(number)")
                        }
                    }
                    .pickerStyle(.wheel)
                    
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
    SelectWeightView()
}
