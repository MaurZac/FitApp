//
//  RoundDropDown.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 5/10/24.
//

import SwiftUI

struct RoundDropDown: View {
    @Binding var select: NSDictionary?
    @State var placeholder: String = ""
    @State var listArr: [NSDictionary] = []
    var action: ((NSDictionary) -> ())?
    var body: some View {
        Menu {
            ForEach(0..<listArr.count, id: \.self){
                index in
                let obj = listArr[index]
                Button {
                    $select.wrappedValue = obj
                    action?(obj)
                } label: {
                    Text(obj["name"] as? String ?? "")
                        .font(.customFont(.regular, fontSize: 15))
                        .maxCenter
                }

                
            }
            
        } label: {
            Text($select.wrappedValue?.value(forKey: "name") as? String ?? placeholder)
                .font(.customFont(.regular, fontSize: 15))
                .maxLeft
            
            Image("down")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
        }
        .horizontal20
        .frame(height: 50)
        .foregroundColor($select.wrappedValue == nil ? .placeHolder : .primaryText)
        .background(Color.txtBG)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10.0)
            .stroke(Color.board, lineWidth: 1))
        
    }
}

#Preview {
    RoundDropDown(select: .constant(nil), placeholder: "Choose", listArr: [["name": "Goal 1"], ["name": "Goal 2"], ["name": "Goal 3"]])
}
