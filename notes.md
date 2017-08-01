# Notes

## Moving objects to cursor

1. Objects move at an angle towards the cursor.
2. Take the angle using atan2(mouse_y- object.y, mouse_x - object.x)
3. To move the object towards the mouse, take sin() and cos() of the angle,
   use the sin and cos values to update vertical and horizontal velocity respectively.

4. If object is not in direct line of sight from mouse, ensure its origin is correct.
5. Use Pythagoras theorem to find distance between 2 points at an angle.

