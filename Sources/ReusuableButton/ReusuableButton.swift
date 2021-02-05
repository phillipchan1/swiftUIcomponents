//
//  SwiftUIView.swift
//  
//
//  Created by Phillip Chan on 2/5/21.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct ReusuableButton: View {
    var label: String?
    
    public init(label: String) {
        self.label = label
    }
    
    public var body: some View {
        Button(action: {
            print("buttonpressed")
        }, label: {
            Text(label ?? "default value")
                .foregroundColor(.white)
                .background(Color.yellow)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        })
    }
}

@available(iOS 13.0, macOS 10.15, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ReusuableButton(label: "myLabel")
    }
}
