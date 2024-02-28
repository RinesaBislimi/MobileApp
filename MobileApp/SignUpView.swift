
import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var userDatabase = UserDatabase()
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showAlert = false // Added state variable for showing alert

    var body: some View {
        NavigationView {
            VStack {
                Text("Sign Up")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.bottom, 30)

                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: {
                    addUser() // Call addUser function on button action
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                Spacer()
            }
            .padding()
            .alert(isPresented: $showAlert) { // Present alert based on showAlert state
                Alert(title: Text("Error"), message: Text("Passwords don't match"), dismissButton: .default(Text("OK")))
            }
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
            })
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }

    func addUser() {
        guard password == confirmPassword else {
            showAlert = true
            return
        }

        userDatabase.addUser(username: username, password: password)
        
        // Save sign-up data to UserDefaults
        let newUser = User(username: username, password: password)
        var savedUsers = UserDefaults.standard.array(forKey: "savedUsers") as? [Data] ?? []
        do {
            let userData = try JSONEncoder().encode(newUser)
            savedUsers.append(userData)
            UserDefaults.standard.set(savedUsers, forKey: "savedUsers")
            print("User added and saved to UserDefaults: \(username), \(password)")
        } catch {
            print("Error encoding user data: \(error)")
        }

        presentationMode.wrappedValue.dismiss()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
