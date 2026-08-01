import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
  public static void main(String[] args) throws IOException {
    int port = 3000;
    Path webRoot = Path.of("web").toAbsolutePath().normalize();

    HttpServer server = HttpServer.create(new InetSocketAddress("0.0.0.0", port), 0);
    server.createContext("/", exchange -> {
      String requested = exchange.getRequestURI().getPath();
      if (requested.equals("/")) {
        requested = "/index.html";
      }

      Path file = webRoot.resolve(requested.substring(1)).normalize();
      if (!file.startsWith(webRoot) || !Files.isRegularFile(file)) {
        exchange.sendResponseHeaders(404, -1);
        exchange.close();
        return;
      }

      byte[] body = Files.readAllBytes(file);
      exchange.getResponseHeaders().set("Content-Type", contentType(file));
      exchange.sendResponseHeaders(200, body.length);
      try (OutputStream out = exchange.getResponseBody()) {
        out.write(body);
      }
    });

    server.start();
    System.out.println("Serving " + webRoot + " at http://localhost:" + port);
  }

  private static String contentType(Path file) {
    String name = file.getFileName().toString();
    if (name.endsWith(".html")) return "text/html; charset=utf-8";
    if (name.endsWith(".css")) return "text/css; charset=utf-8";
    if (name.endsWith(".js")) return "text/javascript; charset=utf-8";
    if (name.endsWith(".png")) return "image/png";
    if (name.endsWith(".svg")) return "image/svg+xml";
    return "application/octet-stream";
  }
}
