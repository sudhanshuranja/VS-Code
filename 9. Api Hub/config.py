import os
from dotenv import load_dotenv

load_dotenv()

def must(key):
    val = os.getenv(key)
    if not val:
        raise RuntimeError(f"{key} missing in .env")
    return val

OPENAI_API_KEY = must("OPENAI_API_KEY")
NV_NAME = os.getenv("NV_NAME", "NV")
WAKE_WORD = os.getenv("WAKE_WORD", "nv")

# ✅ Add these two lines
RAPIDAPI_KEY = os.getenv("RAPIDAPI_KEY")
RAPIDAPI_HOST = os.getenv("RAPIDAPI_HOST")

NEWSAPI_KEY = os.getenv("NEWSAPI_KEY")

REQUESTS_TIMEOUT = 10


