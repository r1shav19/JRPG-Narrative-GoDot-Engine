shader_type canvas_item;

void fragment() {
    vec4 col = texture(TEXTURE, UV);

    if(col.r > 0.9 && col.g > 0.9 && col.b > 0.9){
        discard;
    }

    COLOR = col;
}