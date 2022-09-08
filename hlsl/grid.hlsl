float gridStepped(float thresshold, float2 vectorValue)
{
	if (vectorValue.x < thresshold && vectorValue.y < thresshold)
		return 0;
	return 1;
}

float gridTransparencyMask(float2 uv, float gridThickness, float gridScale)
{
	float2 gridCoords = frac(uv * gridScale);
	gridCoords *= 2;
	gridCoords.x -= 1;
	gridCoords.y -= 1;
	gridCoords = abs(gridCoords);
	return gridStepped(1 - (0.1 * gridThickness), gridCoords);
}
