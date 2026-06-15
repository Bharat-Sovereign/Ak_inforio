# Insights

**Insights** is an AI-enhanced tool designed to provide comprehensive insights and analysis of GitLab Merge Requests (MRs). Leveraging Next.js and a suite of custom UI components, this project helps developers quickly assess the context, code changes, and discussions surrounding MRs.

## Features

- **MR Summary Overview**: Shows key details like file changes, commits, and comments.
- **AI-Powered MR Analysis**: Offers contextual insights and review suggestions based on the MR contents.
- **Interactive Tabs**:
  - **Overview**: Summary and general information about the MR.
  - **Analysis**: Provides detailed analysis using an AI model.
  - **Code Changes**: Lists all code changes with contextual insights and potential impacts.
  - **Related Items**: Displays linked issues and other related MRs.
  - **Discussions**: Highlights MR discussions with sentiment analysis.
- **Review Type Selector**: Choose specific review types (e.g., Backend, Frontend, Database, etc.) to refine the analysis.

## Installation

### Prerequisites

- Node.js >= 16
- GitLab account
- GitLab OAuth application for authentication

### Setup

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd codecontext
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Configure Environment Variables**:

   Create a `.env` file in the project root with the following variables:

   ```plaintext
   NEXTAUTH_URL=http://localhost:3000
   GITLAB_CLIENT_ID=<your-gitlab-client-id>
   GITLAB_CLIENT_SECRET=<your-gitlab-client-secret>
   ```

4. **Run the development server**:
   ```bash
   npm run dev
   ```

   Visit `http://localhost:3000` to start using Insights.

## Usage

1. **Sign in with GitLab**: Upon starting the application, log in via GitLab to access MR data.

2. **Analyze a Merge Request**:
   - Enter the MR URL and select a review type.
   - Click "Analyze MR" to retrieve and display MR details and analysis.

3. **Explore MR Data**:
   - Use the tabs to view overviews, code changes, discussions, related items, and detailed AI analysis.
   - Access linked code changes, discussions, and related issues directly within the app.

## Technical Overview

### Frameworks & Libraries

- **Next.js** for server-side rendering and API integrations.
- **NextAuth** for GitLab authentication.
- **Lucide Icons** for UI icons.

### Key Functions

- **`fetchMRDetails`**: Fetches MR data using the GitLab API based on the URL and selected review type.
- **`AnalysisTab`**: Dynamically renders the MR analysis tab content.
- **Event Handlers**:
  - **`handleSubmit`**: Initiates MR data fetch and analysis.
  - **`navigateToDiscussion`**: Opens a discussion thread in a new browser tab.
  - **`navigateToCodeChange`**: Navigates to code changes linked to the MR.

## Roadmap

- **Enhanced AI Analysis**: Additional review types and granular code change feedback.
- **Deeper Integration with GitLab**: Including real-time updates and notifications.
- **Customization Options**: User-defined review preferences and analysis depth.

## Contributing

Feel free to open issues or submit pull requests to improve Insights. For significant changes, please discuss with the maintainers first.

## License

This project is licensed under the MIT License. See `LICENSE` for more details.

---