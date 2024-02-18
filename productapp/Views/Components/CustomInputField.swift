//
//  CustomInputField.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import Foundation
import SwiftUI

struct CustomInputField: View {
    var textField: TextField<Text>
    var imageName: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .frame(width:30 , height: 30)
                .foregroundColor(.gray)
                
            textField
            }
            .padding()
            .foregroundColor(.white)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: Color.gray, radius: 3, x: 2, y: 2)

        }
}

#Preview {
    ContentView()
}
