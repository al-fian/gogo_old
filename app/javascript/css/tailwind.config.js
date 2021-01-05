const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
    purge: [],
    darkMode: false, // or 'media' or 'class'
    variants: {},
    plugins: [
        require('@tailwindcss/forms'),
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ['Inter var', ...defaultTheme.fontFamily.sans],
            },
            spacing: {
                '72': '18rem',
                '84': '21rem',
                '96': '24rem',
            },
            colors: {
              main: {
                  default: "#60b0e2",
                  "500": "#41a1dd",
              }
            },
        },
    }
}