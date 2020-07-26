#include "vsps_common.fx"

Texture2D mainTex : register(t0);
SamplerState mainSamp : register(s0);

float4 main(VSPS_INOUT input) : SV_TARGET 
{ 
    float4 c;
    c = mainTex.Sample(mainSamp, input.UV1) * input.Color;
    return c;
}