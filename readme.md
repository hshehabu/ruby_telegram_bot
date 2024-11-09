# Ruby Telegram Bot

A simple Telegram bot built with Ruby that responds to user commands, including displaying the Ruby version and echoing text.

## Features
- Start the bot with `/start`
- Get help with `/help`
- Display the current Ruby version with `/ruby_version`
- Echo any text back with `/echo [text]`

## Setup

### Prerequisites
- **Ruby**: Make sure Ruby is installed. You can check by running `ruby -v` in your terminal.
- **Telegram Bot Token**: Obtain a token by creating a bot with [BotFather](https://core.telegram.org/bots#botfather) on Telegram.
- **Dotenv**: Used to load environment variables from a `.env` file.
- **Net::HTTP**: The standard library for making HTTP requests.

### Installation
1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
