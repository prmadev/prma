/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["content/**/*.md", "layouts/**/*.html"],
  theme: {
    // colors: {
      // 'black': 'black',
      // 'white': 'white',
      // 'gray': 'gray',
    // },
    extend: {},
    fontFamily: {
      sans: ['monospace'],
      serif: ['monospace'],
      mono: ['monospace'],
    }
  },
  plugins: [
        require('@tailwindcss/typography'),
  ],
}

