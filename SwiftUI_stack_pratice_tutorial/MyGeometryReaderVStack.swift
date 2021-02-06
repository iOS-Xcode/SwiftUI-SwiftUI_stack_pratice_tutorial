//
//  MyGeometryReaderVStack.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-15.
//

import SwiftUI

enum Index {
    case one, two, three
}
struct MyGeometryReaderVStack : View {
    @State var index : Index = .one
    var body: some View {
        GeometryReader { geometryReader in
            VStack{
                Button(action: {
                    print("pressed 1")
                    withAnimation {
                        self.index = .one
                    }
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height : geometryReader.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                Button(action: {
                    print("pressed 2")
                    withAnimation {
                        self.index = .two
                    }

                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height : geometryReader.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.green)
                }
                Button(action: {
                    withAnimation {
                        self.index = .three
                    }

                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width : 100, height : geometryReader.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.red)
                }
            }
            //Must set alignment as center in GeometryReader
            .frame(width: geometryReader.size.width, height: nil, alignment: .center)

        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
