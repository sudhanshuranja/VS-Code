from voice import speak

class NVAssistant:
    """Core NV Assistant Controller"""

    def __init__(self, name: str):
        self.name = name
        self.is_running = False

    def start(self):
        self.is_running = True
        speak(f"{self.name} online and ready")

    def stop(self):
        self.is_running = False
        speak(f"{self.name} shutting down")
        exit()
