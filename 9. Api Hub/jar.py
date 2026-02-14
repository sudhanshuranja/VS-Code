import json
from voice import listen, speak
from ai_planner import plan
import tools
from api_clients import ask_openai_with_web

WAKE_WORD = "nv"

speak("NV online")

while True:
    text = listen()
    if not text:
        continue

    if text.startswith(WAKE_WORD):
        command = text.replace(WAKE_WORD, "").strip()

        if not command:
            speak("Yes")
            continue

        speak("Working on it")

        try:
            plan_json = plan(command)
            print("PLAN:", plan_json)
            data = json.loads(plan_json)

            action = data.get("action")
            params = data.get("params", {})

            if action == "open_app":
                speak(tools.open_app(params.get("name", "")))

            elif action == "search_web":
                speak(tools.search_web(params.get("query", command)))

            elif action == "shutdown":
                speak(tools.shutdown())

            elif action == "web_answer":
                result = ask_openai_with_web(params.get("query", command))
                if "reply" in result:
                    speak(result["reply"])
                else:
                    speak("I could not fetch official sources right now.")

            elif action == "answer":
                speak(params.get("answer", "Done"))

            else:
                speak("I cannot do that yet")

        except Exception as e:
            print("Error:", e)
            speak("An error occurred")
