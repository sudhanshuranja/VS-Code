def detect_intent(text):
    text = text.lower()

    if any(x in text for x in ["price", "bitcoin", "crypto", "ethereum"]):
        return "crypto"

    if any(x in text for x in ["news", "headline", "breaking"]):
        return "news"

    if any(x in text for x in ["fact", "tell me something", "random"]):
        return "public"

    # ✅ NEW: web search intent
    if any(x in text for x in ["who", "cdc", "fda", "official", "latest guidance", "latest update"]):
        return "web"

    return "chat"
