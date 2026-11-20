import React from "react";
import { Composition } from "remotion";
import { Reel, FPS, T_REEL } from "./Reel";
export const Root: React.FC = () => (
  <Composition id="Reel" component={Reel} width={1080} height={1920} fps={FPS} durationInFrames={T_REEL} />
);
