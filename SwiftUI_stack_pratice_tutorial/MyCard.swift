
//
//  MyBasicCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-12.
//

import SwiftUI

struct MyCard : View {
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        HStack(spacing : 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 0) {
//                Rectangle().frame(height: 0)
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "tray.fill", title: "책상정리하기", start: "AM 5", end: "AM 6", bgColor: Color.blue)
    }
}

