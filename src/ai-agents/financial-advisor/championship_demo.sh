#!/bin/bash
echo "🏆 GKE TURNS 10 HACKATHON - CHAMPIONSHIP DEMO"
echo "=============================================="
echo "🏦 Bank of Anthos + Gemini AI Financial Advisor"
echo ""

echo "🤖 SERVICE STATUS:"
curl -s http://localhost:8080/ | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    print(f'✅ Service: {data[\"service\"]}')
    print(f'✅ AI Model: {data[\"ai_model\"]}')
    print(f'✅ Version: {data[\"version\"]}')
    print(f'✅ Status: {data[\"status\"]}')
except:
    print('❌ Service not responding')
"

echo ""
echo "💎 ELITE CLIENT ANALYSIS:"
echo ""

clients=("tech-ceo" "investment-banker" "crypto-whale" "hedge-fund" "venture-capitalist")

for client in "${clients[@]}"; do
    echo "📊 Client: $client"
    curl -s "http://localhost:8080/analyze/$client" | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    print(f'   🎯 Confidence: {data[\"confidence_score\"]*100:.1f}%')
    print(f'   💡 AI Insight: {data[\"ai_recommendation\"]}')
    print(f'   📈 Transactions: {data[\"transactions_detected\"]}')
    print('   ────────────────────────────────────────')
except Exception as e:
    print(f'   ❌ Analysis failed: {e}')
    print('   ────────────────────────────────────────')
"
    echo ""
done

echo "🏆 HACKATHON READY - CHAMPIONSHIP TIER! ��"
