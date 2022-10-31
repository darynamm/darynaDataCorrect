//
//  InputField.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/31/22.
//

import SwiftUI

struct InputField: View
{
    let title : String
    let hint : String
    
    @Binding var result : String
    var body: some View
    {
        VStack
        {
            Text(title)
                .font(.headline)
                .multilineTextAlignment(.leading)
            TextField(hint, text: $result)
                .disableAutocorrection(true)
        }
        
    }
}

struct InputField_Previews: PreviewProvider
{
    static var previews: some View
    {
        InputField(title : "The title", hint: " a hint", result: .constant("The bound value"))
    }
}
