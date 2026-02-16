import requests
from config import OPENAI_API_KEY, RAPIDAPI_KEY, RAPIDAPI_HOST, NEWSAPI_KEY, REQUESTS_TIMEOUT
from openai import OpenAI
import logging

logger = logging.getLogger(__name__)


# ---------- PUBLIC API (NO KEY) ----------
def get_public_apis(category=None):
    url = "https://catfact.ninja/fact"
    try:
        r = requests.get(url, timeout=REQUESTS_TIMEOUT)
        r.raise_for_status()
        return r.json()
    except Exception as e:
        logger.exception("Error fetching public APIs")
        return {"error": "Failed to fetch public APIs"}


# ---------- CRYPTO (NO KEY) ----------
def get_crypto_price(coin="bitcoin", vs="usd"):
    url = "https://api.coingecko.com/api/v3/simple/price"
    params = {"ids": coin, "vs_currencies": vs}
    try:
        r = requests.get(url, params=params, timeout=REQUESTS_TIMEOUT)
        r.raise_for_status()
        return r.json()
    except Exception as e:
        logger.exception("Error fetching crypto price for coin=%s vs=%s", coin, vs)
        return {"error": "Failed to fetch crypto price"}


# ---------- NEWS (API KEY) ----------
def get_news(query=None, country="us"):
    if not NEWSAPI_KEY:
        return {"error": "NEWSAPI key missing"}
    url = "https://newsapi.org/v2/top-headlines"
    params = {"apiKey": NEWSAPI_KEY, "country": country}
    if query:
        params["q"] = query
    try:
        r = requests.get(url, params=params, timeout=REQUESTS_TIMEOUT)
        r.raise_for_status()
        return r.json()
    except Exception as e:
        logger.exception("Error fetching news for query=%s country=%s", query, country)
        return {"error": "Failed to fetch news"}

# ---------- OPENAI (NORMAL CHAT) ----------
def ask_openai(prompt):
    if not OPENAI_API_KEY:
        return {"error": "OpenAI key missing"}
    try:
        client = OpenAI(api_key=OPENAI_API_KEY)
        res = client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[{"role": "user", "content": prompt}],
            max_tokens=300
        )
        return {"reply": res.choices[0].message.content}
    except Exception as e:
        logger.exception("Error in ask_openai for prompt")
        return {"error": "Failed to get response from OpenAI"}


# ---------- OPENAI (WEB SEARCH ENABLED) ----------
def ask_openai_with_web(prompt):
    """
    Uses the Responses API + web_search tool.
    Returns:
    {
      "reply": "...",
      "sources": [...]
    }
    """
    if not OPENAI_API_KEY:
        return {"error": "OpenAI key missing"}

    try:
        client = OpenAI(api_key=OPENAI_API_KEY)

        resp = client.responses.create(
            model="gpt-5",
            reasoning={"effort": "low"},
            tools=[{
                "type": "web_search",
                "filters": {
                    "allowed_domains": ["who.int", "cdc.gov", "fda.gov"]
                }
            }],
            tool_choice="auto",
            include=["web_search_call.action.sources"],
            input=f"""
Search WHO, CDC, and FDA for the latest official guidance related to:
{prompt}

Summarize it in clear bullet points.
Always include citations.
"""
        )

        # Main text answer
        reply_text = resp.output_text

        # Extract sources
        sources = []
        for item in resp.output:
            if item.type == "web_search_call":
                sources = item.action.get("sources", [])

        return {
            "reply": reply_text,
            "sources": sources
        }

    except Exception as e:
        logger.exception("Error in ask_openai_with_web for prompt")
        return {"error": "Failed to get response from OpenAI web search"}
