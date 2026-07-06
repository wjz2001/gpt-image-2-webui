import type { NextConfig } from "next";

const assetPrefix = process.env.NEXT_ASSET_PREFIX;

const nextConfig: NextConfig = {
  output: "standalone",
  assetPrefix: assetPrefix || undefined,
  allowedDevOrigins: ["127.0.0.1", "192.168.220.1"],
};

export default nextConfig;
