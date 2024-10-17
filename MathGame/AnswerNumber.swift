//
//  AnswerNumber.swift
//  MathGame
//
//  Created by Haidarov N on 21/12/23.
//

import SwiftUI

struct AnswerNumber: View {
    var number : Int
    
    var body: some View {
        Text("\(number)")
            .frame(width: 110, height: 110)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Circle())
            .padding()
    }
}

#Preview {
    AnswerNumber(number: 100)
}
