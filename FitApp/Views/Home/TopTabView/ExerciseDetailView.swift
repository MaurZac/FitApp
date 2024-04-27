//
//  ExerciseDetailView.swift
//  FitApp
//
//  Created by Mauricio Zarate Chula on 4/26/24.
//

import SwiftUI

struct ExerciseDetailView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var imageArr = ["ed_1", "ed_2"]

    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack{
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text("Bench Press")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                    VStack(spacing: 15){
                        ScrollView(.horizontal, showsIndicators: true){
                            LazyHStack(spacing: 15){
                                ForEach(0..<imageArr.count, id:\.self){
                                    index in
                                    
                                    Image(imageArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .screenWidth - 40, height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                    
                                }
                            }
                            .all15
                        }
                        VStack(spacing: 15){
                            Text("Bench Press")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("1) Lie back on a flat bench. Using a medium width grip, lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                            
                            Text("2) From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                            
                            Text("3) After a brief pause, push the bar back to the starting position as you breathe out.")
                                .font(.customFont(.regular, fontSize: 13))
                                .maxLeft
                                .bottom15
                            
                            Text("Equipment Required")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("Chest, Shoulder, Tricep ")
                                .font(.customFont(.semiBold, fontSize: 15))
                                .maxLeft
                                .bottom15
                        }
                        .horizontal15
                    }
                }
                
            }
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    HStack{
                        Button {
                            
                        } label: {
                            Image("fav_color")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        
                        Button {
                            
                        } label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        .horizontal15
                    }
                    .horizontal20
                    .vertical15
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 2)
                }
            }
            .padding(20)
        }
        .navHide
    }
}

#Preview {
    ExerciseDetailView()
}
