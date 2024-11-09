# Ruby Telegram Bot

A simple Telegram bot built with Ruby that responds to user commands, including displaying the Ruby version and echoing text.

## Features
- Start the bot with `/start`
- Get help with `/help`
- Display the current Ruby version with `/ruby_version`

## Setup

### Prerequisites
- **Ruby**: Make sure Ruby is installed. You can check by running `ruby -v` in your terminal.
- **Telegram Bot Token**: Obtain a token by creating a bot with [BotFather](https://telegram.me/BotFather) on Telegram.
- **Dotenv**: Used to load environment variables from a `.env` file.
- **Net::HTTP**: The standard library for making HTTP requests.

### Installation
1. Clone the repository:

   ```bash
   git clone https://github.com/hshehabu/ruby_telegram_bot.git
   cd ruby_telegram_bot
2. Install dependencies:

    ```bash
    gem install dotenv telegram_bot
3. Create a .env file in the project root to store your bot token:
    ```bash
    TELEGRAM_BOT_TOKEN=your_bot_token_here
4. To start the bot, run:
    ```bash
    ruby bot.rb