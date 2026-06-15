# GeoTrade Dashboard - Research Findings

## Geopolitical News APIs

### Primary Options:
1. **NewsData.io** - Real-time breaking news API
   - Supports global news sources with filtering by country, category, and keywords
   - Real-time updates with breaking news endpoint
   - Supports historical news data
   - Free tier available with API key

2. **World News API** - Multi-language news aggregation
   - 86+ languages, 210+ countries
   - Real-time news from thousands of sources
   - Semantic tagging for events
   - Good for geopolitical event detection

3. **NewsAPI.ai** - Event-based news intelligence
   - Automatically detects event types (conflicts, disasters, etc.)
   - Real-time signals with structured event data
   - Tracks event coverage across publishers
   - Excellent for conflict event tracking

4. **Currents API** - Real-time global news
   - 70+ countries, 20+ languages
   - 99.9% uptime SLA
   - Free tier with 1000 daily requests
   - JSON API with easy integration

### Recommended Approach:
- Use **NewsAPI.ai** or **NewsData.io** as primary source for geopolitical events
- Implement keyword filtering for conflict-related terms (war, conflict, military, attack, etc.)
- Add region/country tags to each news item
- Set up real-time polling or webhooks for live updates

## Financial Market Data APIs

### Available Options:
1. **Polygon.io** - Comprehensive market data
   - Real-time and historical stock prices
   - Crypto data
   - Forex data
   - Already available in Manus environment (POLYGON_API_KEY)

2. **Alpha Vantage** - Stock and forex data
   - Real-time stock quotes
   - Intraday and daily data
   - Free tier available

3. **CoinGecko** - Cryptocurrency data
   - Free API (no authentication required)
   - Real-time crypto prices
   - Historical data available

4. **Twelve Data** - Multi-asset data
   - Stocks, ETFs, indices, forex, crypto
   - Real-time and historical data

### Recommended Approach:
- Use **Polygon.io** for stocks and indices (already integrated)
- Use **CoinGecko** for Bitcoin and crypto (free, no auth needed)
- Implement real-time price polling every 5-10 seconds
- Store price history for sparkline generation

## Architecture Plan

### Backend:
1. Set up tRPC procedures for:
   - Fetching geopolitical news with filtering
   - Getting real-time asset prices
   - Calculating market impact scores
   - Managing user watchlists

2. Implement data aggregation:
   - Poll news APIs every 30-60 seconds
   - Poll market data every 5-10 seconds
   - Store events and prices in database
   - Calculate correlations between conflicts and price movements

### Frontend:
1. Real-time updates via WebSocket or polling
2. Interactive map component for conflict markers
3. News feed with timestamps and region tags
4. Asset ticker with sparklines
5. Market impact visualization
6. Event detail sidebar
7. User watchlist management

## Next Steps:
1. Set up database schema for conflicts, assets, prices, and user watchlists
2. Create tRPC procedures for data fetching
3. Build UI components with cyberpunk dark theme
4. Integrate real-time data sources
5. Implement correlation analysis for market impact
