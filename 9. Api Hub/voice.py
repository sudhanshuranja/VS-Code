import speech_recognition as sr
import pyttsx3

engine = pyttsx3.init("sapi5")
engine.setProperty("rate", 175)

recognizer = sr.Recognizer()

def speak(text: str):
    print("NV:", text)
    engine.say(text)
    engine.runAndWait()

def listen(timeout=5):
    try:
        with sr.Microphone() as source:
            recognizer.pause_threshold = 0.8
            audio = recognizer.listen(source, timeout=timeout)
        text = recognizer.recognize_google(audio, language="en-in")
        print("USER:", text)
        return text.lower()
    except:
        return ""
