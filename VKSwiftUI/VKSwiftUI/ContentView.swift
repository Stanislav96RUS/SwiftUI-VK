//
//  ContentView.swift
//  VKSwiftUI
//
//  Created by Stanislav on 06.07.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo = true
    
    private let keyboardPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
            .map { notification in true } ,
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { notification in false }
    ).eraseToAnyPublisher()
    
    var body: some View {
        
        ZStack {
            
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
            }
        
            ScrollView {
            
                VStack {
                    
                    if self.shouldShowLogo {
                        Text("VKSwiftUI")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.top, 32)
                            .font(.largeTitle)
                    }
                
                    HStack {
                        Text("Телефон или e-mail:")
                            .foregroundColor(Color.gray)
                            .padding(.top, 32.0)
                            .padding(.leading, 10.0)
                            Spacer()
                    }
                        
                    HStack {
                        TextField("Введите ваш логин", text: $login)
                            .frame(maxWidth: 370)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                            .cornerRadius(4)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Пароль:")
                            .foregroundColor(Color.gray)
                            .padding(.leading, 10.0)
                            Spacer()
                    }
                    
                    HStack {
                        SecureField("Введите ваш пароль", text: $password)
                            .frame(maxWidth: 370)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .border(Color.gray, width: 2)
                            .cornerRadius(4)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                
                    HStack {
                        Button("Войти") {print("Login Pressed")
                        }
                        .padding([.vertical, .horizontal], 7.0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .disabled(login.isEmpty || password.isEmpty)
                        .cornerRadius(7)
                        .padding(.leading, 10.0)
                        
                        Button("Отмена") {print("Сancel")
                            
                        }
                        Spacer()
                        
                        .foregroundColor(Color.gray)

                    }
                    .padding(.top, 15.0)
                
                    HStack {
                        Text("Ещё не зарегистрированы?")
                            .foregroundColor(Color.gray)
                            .padding(.leading, 10.0)
                        Spacer()
                    }
                    .padding(.top, 15.0)
                    
                   
                    HStack {
                        Button("Зарегистрироваться") {print("Registration")
                        }
                        .frame(width: 370.0, height: 40.0)
                
                    }
                    .frame(maxWidth: 370)
                    .background(Color.gray)
                    .cornerRadius(7)
                    Spacer()
        }
    }
}
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        .onReceive(self.keyboardPublisher) { isKeyboardShow in
            withAnimation(.easeIn(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardShow
            }
            
        }
}
    
}
extension UIApplication {
    func endEditing() {
        self.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
<<<<<<< Updated upstream:VKSwiftUI/VKSwiftUI/ContentView.swift
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
=======
>>>>>>> Stashed changes:VKSwiftUI/VKSwiftUI/AuthView.swift
