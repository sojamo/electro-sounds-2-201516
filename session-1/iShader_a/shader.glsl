#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

// Type of shader expected by Processing
#define PROCESSING_COLOR_SHADER

// parameters controllable from inside your processing sketch code
uniform vec2 mouse;
uniform vec2 resolution;
uniform float time;

// the main routine of the shader program
void main(void) {
  float r = mouse.x/resolution.x;
  float g = mouse.y/resolution.y;
  g *= (1 + sin(time+gl_FragCoord.x*0.1))/2;
  gl_FragColor = vec4(r, g, 0.5, 1.0);
}
