//
//  SelectHeightView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/13/24.
//

import SwiftUI

struct SelectHeightView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectFt = 1
    @State var selectInch = 1
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.black.opacity(0.7))
            
            VStack{
                
                Spacer()
                VStack(spacing: 15){
                    Text("Select Height")
                        .font(.customFont(.semiBold, fontSize: 15))
                        .maxCenter
                        .top8
                    
                    HStack(spacing: 15){
                        Picker("", selection: $selectFt){
                            ForEach(1...20, id: \.self){
                                number in
                                
                                Text("\(number) Ft")
                                    .tag("\(number)")
                            }
                        }
                        .pickerStyle(.wheel)
                        
                        Picker("", selection: $selectInch){
                            ForEach(0...12, id: \.self){
                                number in
                                
                                Text("\(number) Inch")
                                    .tag("\(number)")
                            }
                        }
                        .pickerStyle(.wheel)
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
    SelectHeightView()
}
