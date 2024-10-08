//
//  TextArea.swift
//  TwitterClone
//
//  Created by Buhle Radzilani on 2024/07/27.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    //How to initialize a binding property.
    init(_ placeholder: String, text: Binding<String> ) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear //will give text view background color.
        
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
          TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}


