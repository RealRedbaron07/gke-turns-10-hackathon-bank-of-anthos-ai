#!/bin/bash
echo "🏆 GKE Turns 10 Hackathon - Final Demo"
echo "Bank of Anthos + Gemini AI Financial Advisor"
echo "============================================="
echo ""
echo "🤖 Service Information:"
curl -s http://localhost:8080/ | python3 -m json.tool
echo ""
echo "📊 AI Analysis Examples:"
echo ""
echo "💰 Premium User Analysis:"
curl -s http://localhost:8080/analyze/premium-user | python3 -m json.tool
echo ""
echo "👤 Regular User Analysis:"
curl -s http://localhost:8080/analyze/regular-user | python3 -m json.tool
echo ""
echo "🎯 Student User Analysis:"
curl -s http://localhost:8080/analyze/student-user | python3 -m json.tool
echo ""
echo "✅ DEMO COMPLETE!"
echo "🏆 Ready for GKE Turns 10 Hackathon Submission!"
