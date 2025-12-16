// utils/address.ts

export function isHexString(value: unknown): value is `0x${string}` {
  return typeof value === "string" && /^0x[0-9a-fA-F]+$/.test(value);
}

export function isValidAddress(addr: string): boolean {
  return isHexString(addr) && addr.length === 42;
}

export function shorten(addr: string, left = 6, right = 4): string {
  if (!isValidAddress(addr)) return addr;
  return `${addr.slice(0, 2+left)}…${addr.slice(-right)}`;
}
