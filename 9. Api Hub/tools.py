import os
import webbrowser

def open_app(name):
    apps = {
        "chrome": "start chrome",
        "notepad": "start notepad",
        "calculator": "start calc"
    }
    cmd = apps.get(name)
    if not cmd:
        return "App not supported"
    os.system(cmd)
    return f"Opened {name}"

def search_web(query):
    webbrowser.open(f"https://www.google.com/search?q={query}")
    return "Searching"

def shutdown():
    os.system("shutdown /s /t 5")
    return "Shutting down"
