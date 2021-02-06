//
//  MyView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-16.
//

import SwiftUI

struct MyView : View {
    var title : String
    var bgColor : Color
    
    var body: some View {
        ZStack {
            bgColor
//                .edgesIgnoringSafeArea(.all)
            Text(title)
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.white)
            //If dont wanna view animation
        }.animation(.none)
        
    }
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "MyView", bgColor: .orange)
    }
}
