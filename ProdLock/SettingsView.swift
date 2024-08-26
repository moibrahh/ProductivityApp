import SwiftUI

struct SettingsView: View {
    @State private var isToggled: Bool = false // State variable for the main toggle
    @State private var startTime = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())! // Default start time at 12:00 AM
    @State private var endTime = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: Date())! // Default end time at 12:00 PM

    // State variables for social media app selections
    @State private var isFacebookSelected: Bool = false
    @State private var isInstagramSelected: Bool = false
    @State private var isTwitterSelected: Bool = false
    @State private var isWhatsAppSelected: Bool = false
    @State private var isSnapchatSelected: Bool = false

    var body: some View {
        VStack {
            Toggle("Turn On / Turn Off", isOn: $isToggled)
                .font(.headline)
                .padding(.top)
            
            // Add Text instructing the user to select a time range
            Text("Select Time Range:")
                .font(.headline)
                .padding(.top)
            
            // Add a DatePicker for selecting the start time
            DatePicker("From", selection: $startTime, displayedComponents: .hourAndMinute)
                .labelsHidden() // Hide labels for better appearance
            
            // Add a DatePicker for selecting the end time
            DatePicker("To", selection: $endTime, displayedComponents: .hourAndMinute)
                .labelsHidden() // Hide labels for better appearance

            // Add Text instructing the user to select apps
            Text("Select Apps:")
                .font(.headline)
                .padding(.top)

            // Toggle for Facebook
            Toggle("Facebook", isOn: $isFacebookSelected)
                .font(.subheadline)
                .disabled(!isToggled || !isTimeWithinRange())
            
            // Toggle for Instagram
            Toggle("Instagram", isOn: $isInstagramSelected)
                .font(.subheadline)
                .disabled(!isToggled || !isTimeWithinRange())
            
            // Toggle for Twitter
            Toggle("Twitter", isOn: $isTwitterSelected)
                .font(.subheadline)
                .disabled(!isToggled || !isTimeWithinRange())
            
            // Toggle for WhatsApp
            Toggle("WhatsApp", isOn: $isWhatsAppSelected)
                .font(.subheadline)
                .disabled(!isToggled || !isTimeWithinRange())

            // Toggle for Snapchat
            Toggle("Snapchat", isOn: $isSnapchatSelected)
                .font(.subheadline)
                .disabled(!isToggled || !isTimeWithinRange())
            
            // Add more toggles for other social media apps as needed
        }
    }
    
    // Function to check if the current time is within the user-set time range
    private func isTimeWithinRange() -> Bool {
        let currentTime = Date()
        return currentTime >= startTime && currentTime <= endTime
    }
}
