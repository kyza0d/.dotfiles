// ~/.config/hypr/shaders/grayscale-night-dim.glsl
precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 color = texture2D(tex, v_texcoord);
    
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 nightColor = vec3(gray * 0.8, gray * 0.4, gray * 0.2);
    nightColor *= 0.5;
    
    gl_FragColor = vec4(nightColor, color.a);
}
