import { expect, test } from "vitest";
import { hello } from "@/index";

test("hello world", () => {
	expect(hello).toBe("hello typescript");
});
