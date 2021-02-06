//
//  MyGeometryReader.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-15.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View {
        GeometryReader { geometryReader in
            
            //0 is disappear background color in Hstack
                    HStack (spacing : 0) {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.blue)
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.purple)
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.green)
    //                Text("4")
    //                    .font(.largeTitle)
    //                    .fontWeight(.black)
    //                    .frame(width : 100)
    //                    .foregroundColor(.white)
    //                    .background(Color.red)
                } .background(Color.yellow)
    //            }

        } .background(Color.black)
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
        
    }
}
