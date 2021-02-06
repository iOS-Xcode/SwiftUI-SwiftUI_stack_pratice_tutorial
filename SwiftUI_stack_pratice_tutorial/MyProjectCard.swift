//
//  MyProjectCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-12.
//

import SwiftUI

struct MyProjectCard : View {
    @State
    var shouldShowAlert : Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing : 0) {
            Rectangle().frame(height: 0)
            Text("Seokhyun's Project")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
                
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(Color.red)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                Button(action: {
                    print("button pressed")
                    self.shouldShowAlert = true
                }){
                    Text("Done")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert) {
                    Alert(title: Text("알림창입니다."))
                }
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
