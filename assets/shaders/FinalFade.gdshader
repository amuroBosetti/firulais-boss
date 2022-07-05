shader_type canvas_item;
render_mode unshaded;

// una especie de treshhold
uniform float cutoff : hint_range(0.0, 1.0);
uniform sampler2D mask : hint_albedo;
uniform float smooth_size : hint_range(0.0, 1.0);

void fragment()
{
	float value = texture(mask, UV).r;
	float alpha = smoothstep(cutoff, cutoff + smooth_size, value + smooth_size);
	COLOR = vec4(COLOR.rgb, alpha);
}