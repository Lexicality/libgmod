import eslint from "@eslint/js";
import eslintConfigPrettier from "eslint-config-prettier";
import globals from "globals";
import tseslint from "typescript-eslint";

export default tseslint.config(
    eslint.configs.recommended,
    ...tseslint.configs.recommended,
    {
        languageOptions: {
            globals: {
                ...globals.node,
            },
            ecmaVersion: 2022, // Guessed, based on node.green
            sourceType: "module",
        },

        rules: {
            "prefer-const": "off",
            "@typescript-eslint/no-explicit-any": "off",
        },
    },
    eslintConfigPrettier,
);
