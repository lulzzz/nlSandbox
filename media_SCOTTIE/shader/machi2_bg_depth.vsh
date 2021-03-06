/**
* @brief 線形深度とスクリーンスペース法線を出力する
*        ef_depth_normal.pshと合わせて利用する
* RT0: R16G16B16A16_FLOAT(R:深度 GB:法線32bit)
* C0:  World行列
* C1:  未使用
* C2:  ViewProj行列
*/
/* REPLACE VO_EF_DEPTH_NORMAL,VO_EF_DEPTH_NORMAL */
/* オブジェクト毎 */
cbuffer Const0 : register(b0)
{ f4x4 world; }
/* オブジェクトグループ全体 */
cbuffer Const2 : register(b2)
{f4x4 vp;}
/**/
VO_EF_DEPTH_NORMAL main( uint i:SV_VertexID )
{
    VO_EF_DEPTH_NORMAL ret;
    ret.pos = float4((((int)i%2)*2-1),((int)i/2*2-1),0.9999,1);
    ret.depth  = ret.pos;
    ret.normal = ret.pos;/* 未実装 */
    return ret;
}
