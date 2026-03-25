import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  site: 'https://commit451.com',
  integrations: [tailwind()],
  output: 'static',
});
