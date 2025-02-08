if(global.lives <= 5) {
  global.lives += 1;

  effect_create_above(ef_firework, x, y, 0, c_white);
  instance_destroy();
}