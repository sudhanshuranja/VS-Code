from openai import OpenAI
from config import OPENAI_API_KEY   # ✅ THIS WAS MISSING

# Safety check
if not OPENAI_API_KEY:
    raise RuntimeError("OPENAI_API_KEY not found in .env")

# OpenAI client
client = OpenAI(api_key=OPENAI_API_KEY)

SYSTEM_PROMPT = """
You are an AI planner.
Return ONLY valid JSON.

Actions:
- open_app
- search_web
- shutdown
- answer
- web_answer

Format:
{
  "action": "<action>",
  "params": { ... }
}

Rules:
- Use web_answer when user asks for official guidance, latest updates, WHO/CDC/FDA info.
- web_answer params must include:
  { "query": "<search query>" }
"""

def plan(task):
    res = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": task}
        ],
        max_tokens=150
    )
    return res.choices[0].message.content
