class DioHttpMetrics {
  int? requestStartMs;
  int? dnsStartMs;
  int? dnsEndMs;
  int? connectStartMs;
  int? connectEndMs;
  int? sslStartMs;
  int? sslEndMs;
  int? sendingStartMs;
  int? sendingEndMs;
  int? responseStartMs;
  int? responseEndMs;
  bool isSocketReuse = false;
  int totalTimeMs = 0;

  @override
  String toString() {
    return '[DioHttpMetrics requestStartMs: $requestStartMs, dnsStartMs: $dnsStartMs, dnsEndMs: $dnsEndMs, connectStartMs:$connectStartMs, connectEndMs:$connectEndMs, sslStartMs:$sslStartMs, sslEndMs: $sslEndMs, sendingStartMs: $sendingStartMs, sendingEndMs: $sendingEndMs, responseStartMs: $responseStartMs, responseEndMs: $responseEndMs], isSocketReuse: $isSocketReuse, totalTimeMs: $totalTimeMs]';
  }
}