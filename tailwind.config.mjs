/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        brand: {
          accent: '#d65a31',
          teal: '#60d4c5',
          red: '#e74c3c',
        },
        dark: {
          950: '#030712',
          900: '#111827',
          800: '#1f2937',
          700: '#374151',
        },
      },
      fontFamily: {
        fira: ['"Fira Code"', 'monospace'],
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
};
