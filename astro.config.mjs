import { defineConfig } from 'astro/config';
import react from "@astrojs/react";
import node from "@astrojs/node";

export default defineConfig({
  base: "/tms-astro-test"
  integrations: [react()],
  output: "server",
  adapter: node({
    mode: "standalone"
  })
});