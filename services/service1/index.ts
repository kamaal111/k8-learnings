const { PORT } = Bun.env;
if (!PORT || Number.isNaN(Number(PORT))) {
  throw new Error("No valid port provided");
}

const server = Bun.serve({
  port: Number(PORT),
  fetch(request) {
    return new Response("Welcome to Bun!");
  },
});

console.log(`Listening on localhost:${server.port}`);
