# JARVIS - Personal Voice Assistant
# Version 0.1 - Foundation

class JarvisAssistant:
    """Main JARVIS class"""
    
    def __init__(self):
        self.name = "JARVIS"
        self.is_running = False
    
    def start(self):
        """Start JARVIS"""
        self.is_running = True
        print(f"{self.name}: Online and ready to serve.")
    
    def stop(self):
        """Stop JARVIS"""
        self.is_running = False
        print(f"{self.name}: Shutting down.")


# Main program
if __name__ == "__main__":
    assistant = JarvisAssistant()
    assistant.start()
    assistant.stop()