precision lowp float;

// sadly no const array notation is supported in glsl es 1.0
const vec4 color0 = vec4(0.0, 0.0, 0.0, 1.0);
const vec4 color1 = vec4(0.4414, 0.0977, 0.0508, 1.0);
const vec4 color2 = vec4(0.8555, 0.0234, 0.0430, 1.0);
const vec4 color3 = vec4(0.9063, 0.3750, 0.1094, 1.0);
const vec4 color4 = vec4(0.9531, 0.6484, 0.2148, 1.0);
const vec4 color5 = vec4(0.9648, 0.9375, 0.3398, 1.0);

export vec4 blackbody(in float f) {
  f = f*5.0;

  vec4 lower;
  vec4 upper;

  if(f<3.0){
    if(f<2.0){
      if(f<1.0){
        lower = color0;
        upper = color1;
      }else{
        lower = color1;
        upper = color2;
      }
    }else{
      lower = color2;
      upper = color3;
    }
  }else{
    if(f<5.0){
      if(f<4.0){
        lower = color3;
        upper = color4;
      }else{
        lower = color4;
        upper = color5;
      }
    }else{
      lower = color5;
      upper = color5;
    }
  }

  float rem = fract(f);

  return mix(lower, upper, rem);
}
