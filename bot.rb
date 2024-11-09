require 'telegram_bot'
require 'dotenv/load'

token = ENV['TELEGRAM_BOT_TOkEN']

bot = TelegramBot.new(token:token)

bot.get_updates(fail_silently: true) do |message|
    puts "@#{message.from.username}: #{message.text}"
    command = message.get_command_for(bot)


    message.reply do |reply|
        case command
        when /start/i
            reply.text = "Hello, #{message.from.first_name}! I'm a simple Ruby Telegram Bot. Type /help for more information."
        when /ruby/i
            reply.text = "you're running #{RUBY_VERSION}"
        when /help/i
            reply.text = "Available commands: /start - to start the bot; /help - to get help; /echo [text] - to echo back the given text."
        end
        puts "sending#{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot)
    end
end