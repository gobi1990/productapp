//
//  CustomButton.swift
//  productapp
//
//  Created by Gobi on 17/2/24.
//

import Foundation
import SwiftUI

struct CustomButton: View {
    var text: String
    var icon: Image?
    var btnColor: Color?
    var textColor: Color?
    var width: Double?
    var height: Double?
    var onPressed: (() -> Void)
    
    var body: some View {
        Button(action: onPressed) {
            HStack {
                Text(text)
                    .font(.custom(
                            "AmericanTypewriter",
                            fixedSize: 20)
                            .weight(.heavy)
                    ).foregroundColor(.white)
                icon
            }
            .foregroundColor(textColor ?? Color.green)
            .padding()
            .frame(width: width ?? .infinity,
                   height: height ?? .infinity)
            .background( btnColor ?? Color(.secondarySystemBackground))
            .cornerRadius(10)
        }
    }
}

#Preview {
    CustomButton(text: "Login") {
        print("")
    }
}
