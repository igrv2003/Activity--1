.equ WALL_COLOR,    0x002F4858
.equ PATH_COLOR,    0x00F6F4D2
.equ PLAYER_COLOR,  0x0000FF66
.equ EXIT_COLOR,    0x00FF3B30
.equ WIN_COLOR,     0x0000CC66

.equ START_X, 1
.equ START_Y, 1
.equ EXIT_X,  15
.equ EXIT_Y,  19

.data

# 1 = wall, 0 = walkable tile
up_state:    .byte 0
down_state:  .byte 0
left_state:  .byte 0
right_state: .byte 0

maze_data:
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    .byte 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
    .byte 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1
    .byte 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1
    .byte 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1
    .byte 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1
    .byte 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1
    .byte 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1
    .byte 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1
    .byte 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1
    .byte 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1
    .byte 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1
    .byte 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1
    .byte 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1
    .byte 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1
    .byte 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1
    .byte 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

.text
.globl _start

_start:
    li s0, START_X          # Player X
    li s1, START_Y          # Player Y

    jal ra, draw_maze

    mv a0, s0
    mv a1, s1
    li a2, PLAYER_COLOR
    jal ra, draw_pixel

game_loop:
    li a0, D_PAD_0_UP
    la a1, up_state
    li a2, 0
    li a3, -1
    jal ra, process_button

    li a0, D_PAD_0_DOWN
    la a1, down_state
    li a2, 0
    li a3, 1
    jal ra, process_button

    li a0, D_PAD_0_LEFT
    la a1, left_state
    li a2, -1
    li a3, 0
    jal ra, process_button

    li a0, D_PAD_0_RIGHT
    la a1, right_state
    li a2, 1
    li a3, 0
    jal ra, process_button

    j game_loop

# Reads one D-pad button, applies edge detection, and moves once per press.
# a0 = button address, a1 = address of previous-state byte, a2 = dx, a3 = dy
process_button:
    addi sp, sp, -4
    sw ra, 0(sp)

    lw t0, 0(a0)
    bnez t0, button_pressed
    sb zero, 0(a1)
    j process_button_done

button_pressed:
    lbu t1, 0(a1)
    bnez t1, process_button_done

    li t1, 1
    sb t1, 0(a1)
    mv a0, a2
    mv a1, a3
    jal ra, try_move

process_button_done:
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

try_move:
    addi sp, sp, -12
    sw ra, 8(sp)

    add t0, s0, a0
    add t1, s1, a1

    bltz t0, try_move_done
    bltz t1, try_move_done

    li t2, LED_MATRIX_0_WIDTH
    bge t0, t2, try_move_done
    li t2, LED_MATRIX_0_HEIGHT
    bge t1, t2, try_move_done

    la t2, maze_data
    li t3, LED_MATRIX_0_WIDTH
    mul t4, t1, t3
    add t4, t4, t0
    add t2, t2, t4
    lbu t5, 0(t2)
    bnez t5, try_move_done

    sw t0, 4(sp)
    sw t1, 0(sp)

    mv a0, s0
    mv a1, s1
    jal ra, draw_under_tile

    lw t0, 4(sp)
    lw t1, 0(sp)
    mv s0, t0
    mv s1, t1

    li t2, EXIT_X
    bne s0, t2, draw_player_after_move
    li t2, EXIT_Y
    bne s1, t2, draw_player_after_move
    jal ra, fill_win_screen

draw_player_after_move:
    mv a0, s0
    mv a1, s1
    li a2, PLAYER_COLOR
    jal ra, draw_pixel

try_move_done:
    lw ra, 8(sp)
    addi sp, sp, 12
    ret

draw_under_tile:
    addi sp, sp, -4
    sw ra, 0(sp)

    li t0, EXIT_X
    bne a0, t0, draw_path_tile
    li t0, EXIT_Y
    bne a1, t0, draw_path_tile
    li a2, EXIT_COLOR
    jal ra, draw_pixel
    j draw_under_tile_done

draw_path_tile:
    li a2, PATH_COLOR
    jal ra, draw_pixel

draw_under_tile_done:
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

draw_maze:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s2, 8(sp)
    sw s3, 4(sp)
    sw s4, 0(sp)

    la s2, maze_data
    li s3, 0

draw_maze_row:
    li t2, LED_MATRIX_0_HEIGHT
    bge s3, t2, draw_exit
    li s4, 0

draw_maze_col:
    li t2, LED_MATRIX_0_WIDTH
    bge s4, t2, next_maze_row

    lbu t4, 0(s2)
    bnez t4, maze_wall
    li a2, PATH_COLOR
    j maze_draw_tile

maze_wall:
    li a2, WALL_COLOR

maze_draw_tile:
    mv a0, s4
    mv a1, s3
    jal ra, draw_pixel

    addi s2, s2, 1
    addi s4, s4, 1
    j draw_maze_col

next_maze_row:
    addi s3, s3, 1
    j draw_maze_row

draw_exit:
    li a0, EXIT_X
    li a1, EXIT_Y
    li a2, EXIT_COLOR
    jal ra, draw_pixel
    lw s4, 0(sp)
    lw s3, 4(sp)
    lw s2, 8(sp)
    lw ra, 12(sp)
    addi sp, sp, 16
    ret

fill_win_screen:
    li t0, LED_MATRIX_0_BASE
    li t1, LED_MATRIX_0_WIDTH
    li t2, LED_MATRIX_0_HEIGHT
    mul t3, t1, t2
    li t4, WIN_COLOR

fill_loop:
    beqz t3, win_loop
    sw t4, 0(t0)
    addi t0, t0, 4
    addi t3, t3, -1
    j fill_loop

win_loop:
    j win_loop

draw_pixel:
    li t0, LED_MATRIX_0_WIDTH
    mul t1, a1, t0
    add t1, t1, a0
    slli t1, t1, 2
    li t0, LED_MATRIX_0_BASE
    add t0, t0, t1
    sw a2, 0(t0)
    ret
