// grayscale_transition.frag
#version 450

// Input texture from Hyprland
layout(binding = 0) uniform sampler2D tex;

layout(location = 0) in vec2 uv;
layout(location = 0) out vec4 outColor;

uniform float u_grayscale_intensity; // Our custom uniform

void main() {
    vec4 color = texture(tex, uv);

    // Calculate luminance (common grayscale conversion)
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 grayscale_color = vec3(gray);

    // Mix original color with grayscale color based on intensity
    outColor = vec4(mix(color.rgb, grayscale_color, u_grayscale_intensity), color.a);
}
