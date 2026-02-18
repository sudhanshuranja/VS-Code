from flask import Flask, jsonify, request, render_template
from api_clients import (
    get_public_apis,
    get_crypto_price,
    get_news,
    ask_openai,
    ask_openai_with_web
)
import os

app = Flask(__name__, template_folder="templates")

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/api/public-apis")
def public_apis():
    category = request.args.get("category")
    return jsonify(get_public_apis(category))

@app.route("/api/crypto")
def crypto():
    coin = request.args.get("coin", "bitcoin")
    vs = request.args.get("vs", "usd")
    return jsonify(get_crypto_price(coin, vs))

@app.route("/api/news")
def news():
    q = request.args.get("q")
    return jsonify(get_news(q))

@app.route("/api/chat", methods=["POST"])
def chat():
    data = request.json
    if not data or "prompt" not in data:
        return jsonify({"error": "prompt missing"}), 400
    return jsonify(ask_openai(data["prompt"]))


# ✅ NEW ROUTE: WEB SEARCH CHAT
@app.route("/api/web-chat", methods=["POST"])
def web_chat():
    data = request.json
    if not data or "prompt" not in data:
        return jsonify({"error": "prompt missing"}), 400
    return jsonify(ask_openai_with_web(data["prompt"]))


if __name__ == "__main__":
    debug_mode = os.getenv("FLASK_DEBUG", "0") == "1"
    app.run(debug=debug_mode)
