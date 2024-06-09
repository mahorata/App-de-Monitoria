import SwiftUI

struct LoginScreen: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var showInitialScreen: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack {
                    Spacer()
                    
                    TextField("Username", text: $username)
                        Divider()
                            .frame(maxHeight: 5)
                            .background(Color.black)
                            .cornerRadius(25)
                    
                    TextField("Password", text: $password)
                        Divider()
                            .frame(maxHeight: 5)
                            .background(Color.black)
                            .cornerRadius(25)
                    
                    Spacer()
                }
                // .frame(maxHeight: 150)
                .padding(.horizontal, 10)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                // Spacer(minLength: 4)
                
                Button {
                    showInitialScreen = true
                    } label: {
                        Text("Login")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 11).fill(username.isEmpty ? .gray : .blue)
                            )
                            .foregroundStyle(.white)
                }
                .disabled(username.isEmpty)
                
                .navigationDestination(isPresented: $showInitialScreen) {
                    ContentView()
                        .navigationBarBackButtonHidden(true)
                }
                
                Spacer()
                
            }
            .navigationTitle("Enter in your account")
        }
    }
}

#Preview {
    LoginScreen()
}
