Texture2D<float4>	Input_0:register(t0);		// SRV
Texture2D<float4>	Input_1:register(t1);		// SRV
RWTexture2D<float4>	Output:register(u0);	// UAV

[numthreads(8, 8, 1)]
void Main(uint3 id:SV_DispatchThreadID)
{
	Output[id.xy] = dot(Input_0[id.xy], (0.3, 0.5, 0.2, 0) > THRESHOLD ? Input_0[id.xy] : (0, 0, 0, 0));
}
