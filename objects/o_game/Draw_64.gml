if(instance_exists(o_main)) {
  draw_sprite(s_points, 0, 10, 10);

  draw_set_font(f_LiGothic);
  draw_set_halign(fa_left);
  draw_set_valign(fa_middle);
  draw_text(36, 22, string("score: ") + string(global.points));

  for(i = 0; i < global.lives; i += 1) {
    draw_sprite(s_lives, 0, 10 + i * 20, 36);
  }
}