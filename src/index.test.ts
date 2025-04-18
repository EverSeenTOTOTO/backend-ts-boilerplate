import { expect, test } from "bun:test";
import { hello } from "@/index";

test("hello world", () => {
	expect(hello).toMatch("hello typescript");
});
