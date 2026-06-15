# Crypto.com MCP Connector Capabilities Brief

The Crypto.com MCP connector provides real-time access to cryptocurrency market data from the Crypto.com Exchange. It allows you to fetch a wide range of market information, from current prices and order books to historical candlestick data and recent trades.

## Available Tools

The connector currently offers 9 tools to interact with the Crypto.com Exchange API:

| Tool Name | Description | Key Inputs |
| :--- | :--- | :--- |
| `get_instruments` | List all available trading instruments (e.g., BTCUSD, ETHUSDT) | None |
| `get_instrument` | Get detailed information for a specific instrument | `instrument_name` |
| `get_ticker` | Fetch the current ticker data (price, volume, 24h change) | `instrument_name` |
| `get_tickers` | Fetch tickers for a specific instrument or all instruments | `instrument_name` (optional) |
| `get_book` | Retrieve the order book snapshot (bids and asks) | `instrument_name`, `depth` (optional) |
| `get_trades` | Get the most recent trades for an instrument | `instrument_name`, `count` (optional) |
| `get_candlestick` | Fetch recent candlestick (OHLCV) data for charting | `instrument_name`, `timeframe` |
| `get_mark_price` | Get the mark price for an instrument (useful for derivatives) | `instrument_name` |
| `get_index_price` | Get the index price for an instrument | `instrument_name` |

## Live Data Demonstration

To demonstrate the capabilities, I fetched live data for **Bitcoin (BTCUSD)** using several of the available tools.

### 1. Current Ticker (`get_ticker`)
The ticker provides a snapshot of the current market state, including the last traded price, 24-hour high/low, and trading volume.

*   **Instrument:** BTCUSD
*   **Last Price:** $79,612.18
*   **24h High:** $80,543.24
*   **24h Low:** $79,168.71
*   **24h Change:** -0.26%
*   **24h Volume:** 7,470.96 BTC ($596.69M)
*   **Best Bid:** $79,612.17 (Size: 0.268)
*   **Best Ask:** $79,612.18 (Size: 1.203)

### 2. Order Book (`get_book`)
The order book shows the current resting limit orders on the exchange, providing insight into market depth and liquidity. Here is a snapshot with a depth of 5:

**Asks (Sellers)**
| Price (USD) | Quantity (BTC) |
| :--- | :--- |
| $79,615.00 | 0.09180 |
| $79,614.05 | 0.07490 |
| $79,614.00 | 0.09180 |
| $79,613.99 | 0.07716 |
| $79,612.18 | 0.88556 |

**Bids (Buyers)**
| Price (USD) | Quantity (BTC) |
| :--- | :--- |
| $79,612.17 | 0.53843 |
| $79,611.01 | 0.04705 |
| $79,611.00 | 0.02500 |
| $79,610.00 | 0.09180 |
| $79,609.00 | 0.03082 |

### 3. Recent Trades (`get_trades`)
This tool fetches the most recent executed trades on the exchange. Here are the last 5 trades for BTCUSD:

| Timestamp | Side | Price (USD) | Quantity (BTC) |
| :--- | :--- | :--- | :--- |
| 2026-05-08T15:28:43Z | Buy | $79,597.29 | 0.00100 |
| 2026-05-08T15:28:43Z | Buy | $79,597.29 | 0.02500 |
| 2026-05-08T15:28:43Z | Buy | $79,597.29 | 0.02500 |
| 2026-05-08T15:28:42Z | Buy | $79,597.29 | 0.00099 |
| 2026-05-08T15:28:42Z | Sell | $79,599.74 | 0.03099 |

### 4. Candlestick Data (`get_candlestick`)
The connector can also retrieve historical OHLCV (Open, High, Low, Close, Volume) data for various timeframes (e.g., 1m, 5m, 1h, 1d). This is essential for building charts and performing technical analysis.

*(Note: I fetched the 1-hour candlestick data, which returned a comprehensive array of recent hourly price movements, including open, high, low, close prices, and volume for each hour.)*

## Summary
The Crypto.com MCP connector is a powerful tool for accessing real-time cryptocurrency market data. It can be used to build trading dashboards, perform market analysis, monitor specific assets, or integrate live crypto prices into other applications.
