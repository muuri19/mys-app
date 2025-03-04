import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class TelegramLogger {
  static final String botToken = dotenv.env['TELEGRAM_BOT_TOKEN']!;
  static final String chatId = dotenv.env['TELEGRAM_CHAT_ID']!;
  static final String threadId =
      dotenv.env['TELEGRAM_THREAD_ID']!;

  static Future<void> sendLog(String message,
      {String level = "INFO", String feature = "General"}) async {
    String timestamp = DateTime.now().toLocal().toString();
    String logMessage = """
📌 *Log Event*  
📆 *Time:* `$timestamp`  
🚀 *Feature:* `$feature`  
⚠️ *Level:* `$level`  
📝 *Message:*  
$message
""";

    final String url = 'https://api.telegram.org/bot$botToken/sendMessage';

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'chat_id': chatId,
        'message_thread_id': int.parse(threadId), 
        'text': logMessage,
        'parse_mode': 'Markdown',
      }),
    );

    if (response.statusCode != 200) {
      print('Failed to send log to Telegram: ${response.body}');
    }
  }
}
