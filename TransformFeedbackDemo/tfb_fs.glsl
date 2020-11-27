#version 430
layout(location = 0) out vec4 fragcolor;           
 
in float age_out;

layout(location = 1) uniform float time;
layout(location = 2) uniform float slider = 0.5;


void main(void)

{  
	
	//fragcolor = vec4(gl_PointCoord.s, gl_PointCoord.t, 0.0, 1.0);
	
	vec2 pDist = gl_PointCoord - ((vec2(abs(sin(time)))) );
	if (length(pDist) > 0.25 || length(pDist) < 0.1)  discard;
	
	
	fragcolor = vec4( 0.1* abs((1-sin(time/2.0))+0.1),  abs(0.3*cos(time/3.0)),0.6* slider,  0.5+ 0.5*slider );

	
}




















