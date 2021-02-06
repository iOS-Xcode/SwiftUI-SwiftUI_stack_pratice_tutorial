//
//  MyCircleImageView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-14.
//

import SwiftUI

struct MyCircleImageView : View {
    var imageString : String

    var body: some View {
        //use sf symbols
        //        Image(systemName: "flame.fill")
        //            .font(.system(size: 100))
        //            .foregroundColor(.gray)
        //            .shadow(color: .green, radius: 2, x: 5, y: 10)
        Image(imageString)
        .resizable()
        // .aspectRatio 와 같은 의미
        .scaledToFill()
        .frame(width: 300, height: 300)
        .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.1)
            )
        //stroke(윤각선)을 overlay(덪시움)
            //stroke는 네모 이미지 밖으로 나감.
            //strokeboard는 네모 이미지 안쪽으로.
            .overlay(
                Circle().strokeBorder(Color.blue, lineWidth: 10)
            )
            .overlay(
                Text("Busan")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            )
        //`예상크기
        //           .aspectRatio(contentMode: .fill)
        //실재 크기는 200
        //            .frame(width: 200, height: 200)
        //frame 크기만큼 잘라냄.
        //               .clipped()
        
        //            .edgesIgnoringSafeArea(.all)
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(imageString: "myImage")
    }
}
