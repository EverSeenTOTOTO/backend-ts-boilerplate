import pkg from "./package.json";
import { defineConfig } from "vitest/config";

export default defineConfig({
	resolve: {
		alias: {
			"@": "/src",
		},
	},
	build: {
		ssr: true,
		sourcemap: true,
		rollupOptions: {
			input: "src/index.ts",
			output: {
				dir: "dist",
				format: "cjs",
				entryFileNames: "index.js",
			},
		},
	},
	ssr: {
		external: Object.keys(pkg.dependencies || {}),
	},
});
