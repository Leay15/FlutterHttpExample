
import 'package:pretty_http_logger/pretty_http_logger.dart';

HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

HttpClientWithMiddleware httpClient = HttpClientWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

