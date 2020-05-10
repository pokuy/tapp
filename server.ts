import { serve } from "./dependencies.ts";

const PORT = 8000;
const s = serve(`0.0.0.0:${PORT}`);
const body = new TextEncoder().encode("Hello World\n");

console.log(`Server started on port ${PORT}`);

const content = await Deno.readFile("index.html");

for await (const req of s) {
    req.respond({ body: content});
}