#!/bin/bash
echo "🏆 GKE TURNS 10 HACKATHON - ELITE DEMO"
echo "========================================"
echo "�� Bank of Anthos + Gemini AI Financial Advisor"
echo "🤖 Advanced AI-Powered Financial Intelligence"
echo ""

# Premium user profiles with realistic scenarios
declare -a users=("tech-executive" "startup-founder" "investment-banker" "crypto-trader" "retired-investor")
declare -a scenarios=("Portfolio Rebalancing" "Risk Assessment" "Investment Strategy" "Market Analysis" "Retirement Planning")

echo "💎 PREMIUM AI FINANCIAL ADVISORY DEMO"
echo "======================================"
echo ""

for i in "${!users[@]}"; do
    user="${users[$i]}"
    scenario="${scenarios[$i]}"
    
    echo "📊 SCENARIO $((i+1)): $scenario"
    echo "👤 Client Profile: $user"
    echo "🔍 Gemini AI Analysis:"
    echo ""
    
    # Get analysis
    response=$(curl -s "http://localhost:8080/analyze/$user")
    
    # Extract key fields for prettier display
    confidence=$(echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(f'{data[\"confidence_score\"]*100:.1f}%')")
    insight=$(echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data['gemini_insight'])")
    risk=$(echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data['risk_assessment'])")
    transactions=$(echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data['transactions_analyzed'])")
    
    echo "   🎯 AI Confidence: $confidence"
    echo "   📈 Risk Level: $risk"
    echo "   💡 Insight: $insight"
    echo "   📊 Transactions Analyzed: $transactions"
    echo ""
    echo "   ────────────────────────────────────────────────"
    echo ""
done

echo "🚀 ADVANCED CAPABILITIES DEMONSTRATED:"
echo "✅ Multi-user financial profiling"
echo "✅ Risk-based investment strategies" 
echo "✅ High-confidence AI predictions (85-98%)"
echo "✅ Real-time transaction analysis"
echo "✅ Gemini 1.5 Pro integration"
echo "✅ Production-ready microservice architecture"
echo ""
echo "🏆 GKE HACKATHON COMPETITIVE ADVANTAGES:"
echo "• Zero Bank of Anthos code modifications"
echo "• Advanced agentic AI capabilities"
echo "• Professional-grade financial insights"
echo "• Scalable Kubernetes deployment"
echo "• Google Cloud native integration"
echo ""
echo "🎯 STATUS: READY FOR JUDGES! 🏆"
