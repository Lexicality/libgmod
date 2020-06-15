/** @type import("eslint").Linter.Config */
module.exports = {
    root: true,
    parser: "@typescript-eslint/parser",
    plugins: ["@typescript-eslint"],
    extends: [
        "eslint:recommended",
        "prettier",
        "prettier/@typescript-eslint",
        "plugin:@typescript-eslint/recommended",
	],
	rules: {
		"prefer-const": "off"
	}
    env: {
        browser: false,
        node: true,
    },
};
