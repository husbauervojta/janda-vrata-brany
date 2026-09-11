import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

export default defineConfig({
  server: {
    host: true
  },
  i18n: {
    defaultLocale: 'cs',
    locales: ['cs', 'en'],
    routing: {
      prefixDefaultLocale: false
    }
  },
  vite: {
    plugins: [tailwindcss()]
  }
});
