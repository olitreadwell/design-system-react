#!/bin/bash

## Run prettier. See ignored path in .prettierignore.
yarn prettier "./**/*.{js,jsx,ts,tsx,md,css,less}" --write

## Run JS linting. See ignored path in eslint.config.js.
yarn eslint "./**/*.{js,jsx,ts,tsx}" --fix

## Run CSS linting. See ignored path in stylelint.config.js.
yarn stylelint "./**/*.scss" --fix
