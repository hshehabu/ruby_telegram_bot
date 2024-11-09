require 'telegram_bot'
require 'dotenv/load'
require 'net/http'
require 'json'

token = ENV['TELEGRAM_BOT_TOkEN']

bot = TelegramBot.new(token:token)

commands = [
    {command:'start',description:'starts the bot'},
    {command: 'help', description: 'Displays help' },
    {command: 'ruby_version', description: 'Displays the current Ruby version'}
]

uri = URI("https://api.telegram.org/bot#{token}/setMyCommands")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri.request_uri, 'Content-Type' => 'application/json')

request.body = JSON.dump({
    "commands" => commands
})

http.request(request)

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
            reply.text = "Available commands: /start - to start the bot; /help - to get help; /ruby get the ruby version."
        end
        puts "sending#{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot)
    end
end