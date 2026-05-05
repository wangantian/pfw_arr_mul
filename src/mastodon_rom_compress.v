// Mastodon mascot ROM, 128x128, 8-color palette.
// TinyTapeout-oriented span/range version generated from mastodon_rom_compress(1).v.
// This avoids one case item per pixel. It uses row selection plus horizontal x ranges.
// Default/background color is white. Non-white pixels are encoded as row-local spans.
//
// Palette:
//   idx 0: 8'hFC  white
//   idx 1: 8'h00  black
//   idx 2: 8'hA8  light gray
//   idx 3: 8'h54  dark gray
//   idx 4: 8'hE0  orange
//   idx 5: 8'h08  dark blue
//   idx 6: 8'h40  dark red
//   idx 7: 8'h90  brown/orange shade
// Non-white pixels in original 8-palette ROM: 8990
// Horizontal spans after compression: 3335
`default_nettype none

module mastodon_rom_compress (
    input  wire [6:0] x,
    input  wire [6:0] y,
    output reg  [7:0] pixel
);

    always @(*) begin
        pixel = 8'hFC;  // default: white

        case (y)
            7'd0: begin
                if (x >= 7'd8 && x <= 7'd18) pixel = 8'hA8;  // light gray
                else if (x >= 7'd27 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd38 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd49 && x <= 7'd59) pixel = 8'hA8;  // light gray
                else if (x >= 7'd69 && x <= 7'd78) pixel = 8'hA8;  // light gray
                else if (x >= 7'd90 && x <= 7'd95) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd1: begin
                if (x == 7'd8) pixel = 8'h00;  // black
                else if (x >= 7'd9 && x <= 7'd18) pixel = 8'h54;  // dark gray
                else if (x == 7'd19) pixel = 8'h40;  // dark red
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x == 7'd28) pixel = 8'h00;  // black
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'h54;  // dark gray
                else if (x == 7'd32) pixel = 8'h00;  // black
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x >= 7'd39 && x <= 7'd42) pixel = 8'h54;  // dark gray
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x >= 7'd50 && x <= 7'd59) pixel = 8'h54;  // dark gray
                else if (x == 7'd60) pixel = 8'h40;  // dark red
                else if (x == 7'd61) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h40;  // dark red
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd90) pixel = 8'h00;  // black
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'h54;  // dark gray
                else if (x == 7'd94) pixel = 8'h40;  // dark red
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x == 7'd112) pixel = 8'h00;  // black
                else if (x >= 7'd113 && x <= 7'd123) pixel = 8'h54;  // dark gray
                else if (x == 7'd124) pixel = 8'h00;  // black
            end
            7'd2: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd19) pixel = 8'hE0;  // orange
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x == 7'd28) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x >= 7'd39 && x <= 7'd42) pixel = 8'hE0;  // orange
                else if (x == 7'd43) pixel = 8'h40;  // dark red
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd60) pixel = 8'hE0;  // orange
                else if (x == 7'd61) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd62) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd80) pixel = 8'hE0;  // orange
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd123) pixel = 8'hE0;  // orange
                else if (x == 7'd124) pixel = 8'h40;  // dark red
            end
            7'd3: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd13) pixel = 8'hE0;  // orange
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd16 && x <= 7'd20) pixel = 8'hE0;  // orange
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd54) pixel = 8'hE0;  // orange
                else if (x >= 7'd55 && x <= 7'd57) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd58 && x <= 7'd61) pixel = 8'hE0;  // orange
                else if (x == 7'd62) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd74) pixel = 8'hE0;  // orange
                else if (x >= 7'd75 && x <= 7'd76) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd77 && x <= 7'd81) pixel = 8'hE0;  // orange
                else if (x == 7'd82) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd116) pixel = 8'hE0;  // orange
                else if (x >= 7'd117 && x <= 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd124) pixel = 8'h00;  // black
            end
            7'd4: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd21) pixel = 8'hE0;  // orange
                else if (x == 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h00;  // black
                else if (x >= 7'd55 && x <= 7'd58) pixel = 8'h54;  // dark gray
                else if (x >= 7'd59 && x <= 7'd62) pixel = 8'hE0;  // orange
                else if (x == 7'd63) pixel = 8'h40;  // dark red
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd73) pixel = 8'hE0;  // orange
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x >= 7'd75 && x <= 7'd77) pixel = 8'h54;  // dark gray
                else if (x == 7'd78) pixel = 8'h40;  // dark red
                else if (x == 7'd79) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd80 && x <= 7'd82) pixel = 8'hE0;  // orange
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h54;  // dark gray
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x == 7'd117) pixel = 8'h40;  // dark red
                else if (x >= 7'd118 && x <= 7'd124) pixel = 8'h54;  // dark gray
            end
            7'd5: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x == 7'd18) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd19 && x <= 7'd21) pixel = 8'hE0;  // orange
                else if (x == 7'd22) pixel = 8'h40;  // dark red
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'h54;  // dark gray
                else if (x == 7'd59) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd60 && x <= 7'd62) pixel = 8'hE0;  // orange
                else if (x == 7'd63) pixel = 8'h40;  // dark red
                else if (x == 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h40;  // dark red
                else if (x >= 7'd80 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x == 7'd116) pixel = 8'h40;  // dark red
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
            end
            7'd6: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x == 7'd18) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd19 && x <= 7'd21) pixel = 8'hE0;  // orange
                else if (x == 7'd22) pixel = 8'h40;  // dark red
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'h54;  // dark gray
                else if (x == 7'd59) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd60 && x <= 7'd62) pixel = 8'hE0;  // orange
                else if (x == 7'd63) pixel = 8'h40;  // dark red
                else if (x == 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h40;  // dark red
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x == 7'd117) pixel = 8'h00;  // black
                else if (x >= 7'd118 && x <= 7'd122) pixel = 8'h54;  // dark gray
                else if (x == 7'd123) pixel = 8'h00;  // black
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd7: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd16) pixel = 8'h54;  // dark gray
                else if (x == 7'd17) pixel = 8'h40;  // dark red
                else if (x >= 7'd18 && x <= 7'd21) pixel = 8'hE0;  // orange
                else if (x == 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h00;  // black
                else if (x >= 7'd55 && x <= 7'd58) pixel = 8'h54;  // dark gray
                else if (x >= 7'd59 && x <= 7'd62) pixel = 8'hE0;  // orange
                else if (x == 7'd63) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h40;  // dark red
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd122) pixel = 8'hE0;  // orange
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd8: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd12) pixel = 8'hE0;  // orange
                else if (x >= 7'd13 && x <= 7'd16) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd17 && x <= 7'd20) pixel = 8'hE0;  // orange
                else if (x == 7'd21) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd61) pixel = 8'hE0;  // orange
                else if (x == 7'd62) pixel = 8'h40;  // dark red
                else if (x == 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h40;  // dark red
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd122) pixel = 8'hE0;  // orange
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd9: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd19) pixel = 8'hE0;  // orange
                else if (x == 7'd20) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd21) pixel = 8'h00;  // black
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x == 7'd32) pixel = 8'h40;  // dark red
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd59) pixel = 8'hE0;  // orange
                else if (x == 7'd60) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd61) pixel = 8'h40;  // dark red
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h40;  // dark red
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x == 7'd116) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd117 && x <= 7'd122) pixel = 8'h54;  // dark gray
                else if (x == 7'd123) pixel = 8'h00;  // black
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd10: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd12) pixel = 8'hE0;  // orange
                else if (x >= 7'd13 && x <= 7'd17) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x == 7'd19) pixel = 8'h40;  // dark red
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h54;  // dark gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'hE0;  // orange
                else if (x >= 7'd32 && x <= 7'd33) pixel = 8'h54;  // dark gray
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h40;  // dark red
                else if (x >= 7'd39 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd53) pixel = 8'hE0;  // orange
                else if (x >= 7'd54 && x <= 7'd55) pixel = 8'h54;  // dark gray
                else if (x == 7'd56) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd57 && x <= 7'd59) pixel = 8'hE0;  // orange
                else if (x == 7'd60) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd61) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h40;  // dark red
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h00;  // black
                else if (x >= 7'd80 && x <= 7'd83) pixel = 8'hE0;  // orange
                else if (x == 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h40;  // dark red
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'hE0;  // orange
                else if (x == 7'd94) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd95) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd102 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h40;  // dark red
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x == 7'd116) pixel = 8'h40;  // dark red
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
            end
            7'd11: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'hA8;  // light gray
                else if (x == 7'd27) pixel = 8'hA8;  // light gray
                else if (x == 7'd28) pixel = 8'h40;  // dark red
                else if (x >= 7'd29 && x <= 7'd32) pixel = 8'hE0;  // orange
                else if (x == 7'd33) pixel = 8'h40;  // dark red
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h54;  // dark gray
                else if (x == 7'd37) pixel = 8'h40;  // dark red
                else if (x == 7'd38) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd39 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h00;  // black
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x >= 7'd56 && x <= 7'd57) pixel = 8'h54;  // dark gray
                else if (x >= 7'd58 && x <= 7'd60) pixel = 8'hE0;  // orange
                else if (x >= 7'd61 && x <= 7'd62) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'hE0;  // orange
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd74) pixel = 8'h00;  // black
                else if (x >= 7'd75 && x <= 7'd77) pixel = 8'h54;  // dark gray
                else if (x == 7'd78) pixel = 8'h40;  // dark red
                else if (x == 7'd79) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd80 && x <= 7'd82) pixel = 8'hE0;  // orange
                else if (x == 7'd83) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x == 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd91) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd92 && x <= 7'd94) pixel = 8'hE0;  // orange
                else if (x == 7'd95) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd96) pixel = 8'h00;  // black
                else if (x >= 7'd97 && x <= 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd99) pixel = 8'h40;  // dark red
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd104) pixel = 8'hE0;  // orange
                else if (x == 7'd105) pixel = 8'h00;  // black
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hE0;  // orange
                else if (x >= 7'd116 && x <= 7'd124) pixel = 8'h54;  // dark gray
            end
            7'd12: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd28) pixel = 8'h00;  // black
                else if (x == 7'd29) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd30 && x <= 7'd33) pixel = 8'hE0;  // orange
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd37 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd57) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd61) pixel = 8'hE0;  // orange
                else if (x == 7'd62) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd73) pixel = 8'hE0;  // orange
                else if (x >= 7'd74 && x <= 7'd77) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd78 && x <= 7'd81) pixel = 8'hE0;  // orange
                else if (x == 7'd82) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h40;  // dark red
                else if (x >= 7'd92 && x <= 7'd96) pixel = 8'hE0;  // orange
                else if (x >= 7'd97 && x <= 7'd98) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd99 && x <= 7'd103) pixel = 8'hE0;  // orange
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd116) pixel = 8'hE0;  // orange
                else if (x >= 7'd117 && x <= 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd124) pixel = 8'h00;  // black
            end
            7'd13: begin
                if (x == 7'd8) pixel = 8'h40;  // dark red
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x == 7'd29) pixel = 8'h00;  // black
                else if (x == 7'd30) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd31 && x <= 7'd39) pixel = 8'hE0;  // orange
                else if (x == 7'd40) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd41) pixel = 8'h40;  // dark red
                else if (x == 7'd42) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h40;  // dark red
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x >= 7'd57 && x <= 7'd58) pixel = 8'h54;  // dark gray
                else if (x >= 7'd59 && x <= 7'd61) pixel = 8'hE0;  // orange
                else if (x >= 7'd62 && x <= 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd80) pixel = 8'hE0;  // orange
                else if (x == 7'd81) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x == 7'd92) pixel = 8'h40;  // dark red
                else if (x >= 7'd93 && x <= 7'd102) pixel = 8'hE0;  // orange
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd123) pixel = 8'hE0;  // orange
                else if (x == 7'd124) pixel = 8'h40;  // dark red
            end
            7'd14: begin
                if (x == 7'd8) pixel = 8'h00;  // black
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd30) pixel = 8'h54;  // dark gray
                else if (x == 7'd31) pixel = 8'h40;  // dark red
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd38) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd39 && x <= 7'd40) pixel = 8'h40;  // dark red
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd53) pixel = 8'h54;  // dark gray
                else if (x == 7'd54) pixel = 8'h40;  // dark red
                else if (x == 7'd58) pixel = 8'h00;  // black
                else if (x >= 7'd59 && x <= 7'd62) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd63) pixel = 8'h00;  // black
                else if (x == 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd77) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h40;  // dark red
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x == 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd95 && x <= 7'd100) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd102) pixel = 8'h40;  // dark red
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x == 7'd112) pixel = 8'h40;  // dark red
                else if (x >= 7'd113 && x <= 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd124) pixel = 8'h00;  // black
            end
            7'd15: begin
                if (x >= 7'd8 && x <= 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd38) pixel = 8'h54;  // dark gray
                else if (x == 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd49 && x <= 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x >= 7'd59 && x <= 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd64) pixel = 8'hA8;  // light gray
                else if (x >= 7'd69 && x <= 7'd78) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x == 7'd94) pixel = 8'hA8;  // light gray
                else if (x >= 7'd95 && x <= 7'd100) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd124) pixel = 8'h54;  // dark gray
            end
            7'd18: begin
                if (x >= 7'd26 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd36 && x <= 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd48) pixel = 8'hA8;  // light gray
                else if (x >= 7'd52 && x <= 7'd58) pixel = 8'hA8;  // light gray
                else if (x >= 7'd62 && x <= 7'd65) pixel = 8'hA8;  // light gray
                else if (x >= 7'd67 && x <= 7'd68) pixel = 8'hA8;  // light gray
                else if (x >= 7'd71 && x <= 7'd73) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd78) pixel = 8'hA8;  // light gray
                else if (x >= 7'd81 && x <= 7'd84) pixel = 8'hA8;  // light gray
                else if (x >= 7'd86 && x <= 7'd88) pixel = 8'hA8;  // light gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'hA8;  // light gray
                else if (x >= 7'd96 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd106) pixel = 8'hA8;  // light gray
            end
            7'd19: begin
                if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd32) pixel = 8'h00;  // black
                else if (x == 7'd34) pixel = 8'hA8;  // light gray
                else if (x >= 7'd35 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x >= 7'd43 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd51) pixel = 8'h54;  // dark gray
                else if (x >= 7'd52 && x <= 7'd58) pixel = 8'h00;  // black
                else if (x == 7'd59) pixel = 8'hA8;  // light gray
                else if (x >= 7'd62 && x <= 7'd65) pixel = 8'h00;  // black
                else if (x >= 7'd67 && x <= 7'd68) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'hA8;  // light gray
                else if (x == 7'd70) pixel = 8'h54;  // dark gray
                else if (x >= 7'd71 && x <= 7'd73) pixel = 8'h00;  // black
                else if (x >= 7'd76 && x <= 7'd78) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd84) pixel = 8'h00;  // black
                else if (x >= 7'd86 && x <= 7'd88) pixel = 8'h00;  // black
                else if (x >= 7'd89 && x <= 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x >= 7'd96 && x <= 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
            end
            7'd20: begin
                if (x >= 7'd26 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x == 7'd28) pixel = 8'h54;  // dark gray
                else if (x == 7'd30) pixel = 8'hA8;  // light gray
                else if (x >= 7'd31 && x <= 7'd32) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x >= 7'd39 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x >= 7'd50 && x <= 7'd51) pixel = 8'h54;  // dark gray
                else if (x == 7'd52) pixel = 8'h00;  // black
                else if (x == 7'd53) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd55) pixel = 8'h00;  // black
                else if (x == 7'd56) pixel = 8'h54;  // dark gray
                else if (x == 7'd57) pixel = 8'hA8;  // light gray
                else if (x == 7'd58) pixel = 8'h00;  // black
                else if (x == 7'd59) pixel = 8'hA8;  // light gray
                else if (x == 7'd62) pixel = 8'hA8;  // light gray
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'h00;  // black
                else if (x >= 7'd65 && x <= 7'd66) pixel = 8'hA8;  // light gray
                else if (x >= 7'd67 && x <= 7'd68) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h54;  // dark gray
                else if (x >= 7'd71 && x <= 7'd72) pixel = 8'h00;  // black
                else if (x == 7'd73) pixel = 8'hA8;  // light gray
                else if (x == 7'd75) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd88) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd94) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
            end
            7'd21: begin
                if (x >= 7'd8 && x <= 7'd21) pixel = 8'hA8;  // light gray
                else if (x >= 7'd26 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x == 7'd28) pixel = 8'h54;  // dark gray
                else if (x == 7'd29) pixel = 8'hA8;  // light gray
                else if (x >= 7'd31 && x <= 7'd33) pixel = 8'hA8;  // light gray
                else if (x >= 7'd34 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd55) pixel = 8'h00;  // black
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x == 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd64) pixel = 8'h00;  // black
                else if (x >= 7'd65 && x <= 7'd66) pixel = 8'hA8;  // light gray
                else if (x >= 7'd67 && x <= 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd71 && x <= 7'd72) pixel = 8'h00;  // black
                else if (x >= 7'd75 && x <= 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'h00;  // black
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x >= 7'd86 && x <= 7'd87) pixel = 8'h00;  // black
                else if (x >= 7'd91 && x <= 7'd94) pixel = 8'h00;  // black
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd22: begin
                if (x >= 7'd8 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd29) pixel = 8'h00;  // black
                else if (x == 7'd30) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd34) pixel = 8'h00;  // black
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd55) pixel = 8'h00;  // black
                else if (x == 7'd56) pixel = 8'h54;  // dark gray
                else if (x == 7'd63) pixel = 8'h54;  // dark gray
                else if (x == 7'd64) pixel = 8'h00;  // black
                else if (x >= 7'd65 && x <= 7'd66) pixel = 8'h54;  // dark gray
                else if (x == 7'd67) pixel = 8'h00;  // black
                else if (x == 7'd68) pixel = 8'h54;  // dark gray
                else if (x == 7'd69) pixel = 8'h00;  // black
                else if (x == 7'd70) pixel = 8'hA8;  // light gray
                else if (x == 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd72) pixel = 8'h54;  // dark gray
                else if (x == 7'd74) pixel = 8'hA8;  // light gray
                else if (x >= 7'd75 && x <= 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'hA8;  // light gray
                else if (x >= 7'd94 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x >= 7'd112 && x <= 7'd124) pixel = 8'h00;  // black
            end
            7'd23: begin
                if (x >= 7'd26 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x >= 7'd34 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd46) pixel = 8'hA8;  // light gray
                else if (x >= 7'd47 && x <= 7'd48) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd55) pixel = 8'h00;  // black
                else if (x == 7'd56) pixel = 8'h54;  // dark gray
                else if (x == 7'd63) pixel = 8'hA8;  // light gray
                else if (x >= 7'd64 && x <= 7'd66) pixel = 8'h00;  // black
                else if (x == 7'd67) pixel = 8'h54;  // dark gray
                else if (x == 7'd68) pixel = 8'hA8;  // light gray
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd72) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'h54;  // dark gray
                else if (x == 7'd75) pixel = 8'h00;  // black
                else if (x >= 7'd76 && x <= 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x == 7'd85) pixel = 8'h00;  // black
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'hA8;  // light gray
                else if (x >= 7'd95 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
            end
            7'd24: begin
                if (x == 7'd25) pixel = 8'hA8;  // light gray
                else if (x >= 7'd26 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd53) pixel = 8'hA8;  // light gray
                else if (x >= 7'd54 && x <= 7'd56) pixel = 8'h00;  // black
                else if (x >= 7'd64 && x <= 7'd66) pixel = 8'h00;  // black
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd73) pixel = 8'hA8;  // light gray
                else if (x >= 7'd74 && x <= 7'd75) pixel = 8'h00;  // black
                else if (x == 7'd76) pixel = 8'h54;  // dark gray
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x >= 7'd79 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x >= 7'd84 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x >= 7'd103 && x <= 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
            end
            7'd25: begin
                if (x == 7'd25) pixel = 8'hA8;  // light gray
                else if (x >= 7'd26 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x == 7'd29) pixel = 8'hA8;  // light gray
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd36 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd53) pixel = 8'h54;  // dark gray
                else if (x >= 7'd54 && x <= 7'd56) pixel = 8'h00;  // black
                else if (x == 7'd57) pixel = 8'hA8;  // light gray
                else if (x == 7'd64) pixel = 8'h54;  // dark gray
                else if (x >= 7'd65 && x <= 7'd66) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h54;  // dark gray
                else if (x == 7'd70) pixel = 8'h00;  // black
                else if (x == 7'd71) pixel = 8'h54;  // dark gray
                else if (x == 7'd73) pixel = 8'h54;  // dark gray
                else if (x >= 7'd74 && x <= 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x >= 7'd84 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
            end
            7'd30: begin
                if (x >= 7'd8 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd31: begin
                if (x >= 7'd8 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd32: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd11 && x <= 7'd121) pixel = 8'h40;  // dark red
                else if (x == 7'd122) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd33: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x >= 7'd11 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h40;  // dark red
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd34: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h40;  // dark red
                else if (x >= 7'd11 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h40;  // dark red
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd35: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h40;  // dark red
                else if (x >= 7'd11 && x <= 7'd62) pixel = 8'h00;  // black
                else if (x >= 7'd63 && x <= 7'd65) pixel = 8'h08;  // dark blue
                else if (x >= 7'd66 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd36: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x >= 7'd10 && x <= 7'd57) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd73) pixel = 8'h08;  // dark blue
                else if (x >= 7'd74 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd37: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x >= 7'd10 && x <= 7'd54) pixel = 8'h00;  // black
                else if (x >= 7'd55 && x <= 7'd59) pixel = 8'h08;  // dark blue
                else if (x >= 7'd60 && x <= 7'd61) pixel = 8'h54;  // dark gray
                else if (x == 7'd62) pixel = 8'hA8;  // light gray
                else if (x == 7'd65) pixel = 8'hA8;  // light gray
                else if (x >= 7'd66 && x <= 7'd67) pixel = 8'h08;  // dark blue
                else if (x >= 7'd68 && x <= 7'd70) pixel = 8'h54;  // dark gray
                else if (x >= 7'd71 && x <= 7'd75) pixel = 8'h08;  // dark blue
                else if (x >= 7'd76 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd38: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x >= 7'd10 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x >= 7'd52 && x <= 7'd56) pixel = 8'h08;  // dark blue
                else if (x == 7'd57) pixel = 8'hA8;  // light gray
                else if (x == 7'd73) pixel = 8'hA8;  // light gray
                else if (x >= 7'd74 && x <= 7'd76) pixel = 8'h08;  // dark blue
                else if (x >= 7'd77 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd39: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x >= 7'd38 && x <= 7'd43) pixel = 8'h08;  // dark blue
                else if (x >= 7'd44 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x >= 7'd51 && x <= 7'd53) pixel = 8'h08;  // dark blue
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x >= 7'd59 && x <= 7'd60) pixel = 8'hA8;  // light gray
                else if (x == 7'd61) pixel = 8'h54;  // dark gray
                else if (x >= 7'd62 && x <= 7'd63) pixel = 8'h00;  // black
                else if (x >= 7'd66 && x <= 7'd71) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'hA8;  // light gray
                else if (x == 7'd75) pixel = 8'h00;  // black
                else if (x == 7'd76) pixel = 8'h08;  // dark blue
                else if (x >= 7'd77 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x >= 7'd84 && x <= 7'd89) pixel = 8'h08;  // dark blue
                else if (x >= 7'd90 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd40: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd33) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd47) pixel = 8'h08;  // dark blue
                else if (x == 7'd48) pixel = 8'h00;  // black
                else if (x >= 7'd49 && x <= 7'd51) pixel = 8'h08;  // dark blue
                else if (x == 7'd52) pixel = 8'h54;  // dark gray
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x == 7'd57) pixel = 8'h54;  // dark gray
                else if (x >= 7'd58 && x <= 7'd70) pixel = 8'h00;  // black
                else if (x == 7'd71) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'hA8;  // light gray
                else if (x >= 7'd75 && x <= 7'd78) pixel = 8'h08;  // dark blue
                else if (x == 7'd79) pixel = 8'h00;  // black
                else if (x >= 7'd80 && x <= 7'd93) pixel = 8'h08;  // dark blue
                else if (x >= 7'd94 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd41: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd30) pixel = 8'h00;  // black
                else if (x >= 7'd31 && x <= 7'd35) pixel = 8'h08;  // dark blue
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd44) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd46 && x <= 7'd50) pixel = 8'h08;  // dark blue
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'hA8;  // light gray
                else if (x >= 7'd55 && x <= 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd72) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd81) pixel = 8'h08;  // dark blue
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'hA8;  // light gray
                else if (x >= 7'd89 && x <= 7'd90) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x >= 7'd92 && x <= 7'd96) pixel = 8'h08;  // dark blue
                else if (x >= 7'd97 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd42: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x >= 7'd29 && x <= 7'd32) pixel = 8'h08;  // dark blue
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x == 7'd34) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd48) pixel = 8'h08;  // dark blue
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x >= 7'd53 && x <= 7'd58) pixel = 8'h00;  // black
                else if (x >= 7'd59 && x <= 7'd68) pixel = 8'h54;  // dark gray
                else if (x >= 7'd69 && x <= 7'd73) pixel = 8'h00;  // black
                else if (x == 7'd74) pixel = 8'h54;  // dark gray
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h08;  // dark blue
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd95 && x <= 7'd98) pixel = 8'h08;  // dark blue
                else if (x >= 7'd99 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x >= 7'd108 && x <= 7'd115) pixel = 8'h08;  // dark blue
                else if (x >= 7'd116 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd43: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x >= 7'd28 && x <= 7'd30) pixel = 8'h08;  // dark blue
                else if (x == 7'd31) pixel = 8'hA8;  // light gray
                else if (x >= 7'd36 && x <= 7'd37) pixel = 8'h54;  // dark gray
                else if (x >= 7'd38 && x <= 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd44) pixel = 8'h54;  // dark gray
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x == 7'd51) pixel = 8'h54;  // dark gray
                else if (x >= 7'd52 && x <= 7'd54) pixel = 8'h00;  // black
                else if (x == 7'd55) pixel = 8'h54;  // dark gray
                else if (x >= 7'd56 && x <= 7'd57) pixel = 8'hA8;  // light gray
                else if (x == 7'd71) pixel = 8'hA8;  // light gray
                else if (x == 7'd72) pixel = 8'h54;  // dark gray
                else if (x >= 7'd73 && x <= 7'd75) pixel = 8'h00;  // black
                else if (x == 7'd76) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd89) pixel = 8'h00;  // black
                else if (x >= 7'd90 && x <= 7'd91) pixel = 8'h54;  // dark gray
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x >= 7'd97 && x <= 7'd99) pixel = 8'h08;  // dark blue
                else if (x >= 7'd100 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x >= 7'd106 && x <= 7'd109) pixel = 8'h08;  // dark blue
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'hA8;  // light gray
                else if (x >= 7'd114 && x <= 7'd117) pixel = 8'h08;  // dark blue
                else if (x >= 7'd118 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd44: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd25) pixel = 8'h00;  // black
                else if (x >= 7'd26 && x <= 7'd28) pixel = 8'h08;  // dark blue
                else if (x == 7'd29) pixel = 8'h54;  // dark gray
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x >= 7'd34 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd42 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'h00;  // black
                else if (x == 7'd53) pixel = 8'h54;  // dark gray
                else if (x == 7'd54) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'h54;  // dark gray
                else if (x >= 7'd75 && x <= 7'd77) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x >= 7'd81 && x <= 7'd85) pixel = 8'h00;  // black
                else if (x >= 7'd86 && x <= 7'd87) pixel = 8'h54;  // dark gray
                else if (x >= 7'd88 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'h08;  // dark blue
                else if (x >= 7'd102 && x <= 7'd103) pixel = 8'h00;  // black
                else if (x >= 7'd104 && x <= 7'd107) pixel = 8'h08;  // dark blue
                else if (x == 7'd108) pixel = 8'hA8;  // light gray
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd119) pixel = 8'h08;  // dark blue
                else if (x >= 7'd120 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd45: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd24) pixel = 8'h00;  // black
                else if (x >= 7'd25 && x <= 7'd27) pixel = 8'h08;  // dark blue
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x == 7'd31) pixel = 8'hA8;  // light gray
                else if (x >= 7'd32 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd46 && x <= 7'd47) pixel = 8'h00;  // black
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x >= 7'd49 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x == 7'd75) pixel = 8'hA8;  // light gray
                else if (x >= 7'd76 && x <= 7'd78) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x >= 7'd90 && x <= 7'd91) pixel = 8'hA8;  // light gray
                else if (x >= 7'd92 && x <= 7'd95) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd105) pixel = 8'h08;  // dark blue
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd113) pixel = 8'h54;  // dark gray
                else if (x == 7'd114) pixel = 8'hA8;  // light gray
                else if (x == 7'd117) pixel = 8'hA8;  // light gray
                else if (x >= 7'd118 && x <= 7'd120) pixel = 8'h08;  // dark blue
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd46: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd23) pixel = 8'h00;  // black
                else if (x >= 7'd24 && x <= 7'd26) pixel = 8'h08;  // dark blue
                else if (x >= 7'd30 && x <= 7'd33) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd35) pixel = 8'hA8;  // light gray
                else if (x >= 7'd37 && x <= 7'd39) pixel = 8'hA8;  // light gray
                else if (x == 7'd46) pixel = 8'hA8;  // light gray
                else if (x >= 7'd47 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd88 && x <= 7'd90) pixel = 8'hA8;  // light gray
                else if (x == 7'd93) pixel = 8'hA8;  // light gray
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd95 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd103) pixel = 8'h08;  // dark blue
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x >= 7'd109 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'hA8;  // light gray
                else if (x >= 7'd119 && x <= 7'd120) pixel = 8'h08;  // dark blue
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd47: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd25) pixel = 8'h08;  // dark blue
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'h00;  // black
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'h00;  // black
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x >= 7'd84 && x <= 7'd94) pixel = 8'hA8;  // light gray
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x >= 7'd96 && x <= 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h08;  // dark blue
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd107 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'hA8;  // light gray
                else if (x >= 7'd114 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h08;  // dark blue
                else if (x == 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd48: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd24) pixel = 8'h08;  // dark blue
                else if (x == 7'd25) pixel = 8'hA8;  // light gray
                else if (x == 7'd27) pixel = 8'hA8;  // light gray
                else if (x >= 7'd28 && x <= 7'd30) pixel = 8'h00;  // black
                else if (x >= 7'd31 && x <= 7'd45) pixel = 8'hA8;  // light gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x >= 7'd97 && x <= 7'd99) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x == 7'd114) pixel = 8'hA8;  // light gray
                else if (x >= 7'd115 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h08;  // dark blue
                else if (x == 7'd122) pixel = 8'h00;  // black
                else if (x == 7'd123) pixel = 8'h40;  // dark red
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd49: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x >= 7'd22 && x <= 7'd23) pixel = 8'h08;  // dark blue
                else if (x == 7'd24) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd29) pixel = 8'h00;  // black
                else if (x >= 7'd30 && x <= 7'd46) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x >= 7'd98 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x == 7'd113) pixel = 8'h54;  // dark gray
                else if (x >= 7'd114 && x <= 7'd115) pixel = 8'hA8;  // light gray
                else if (x >= 7'd116 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd120) pixel = 8'h54;  // dark gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd50: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h40;  // dark red
                else if (x >= 7'd10 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x >= 7'd22 && x <= 7'd23) pixel = 8'h08;  // dark blue
                else if (x == 7'd26) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x >= 7'd29 && x <= 7'd44) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x >= 7'd83 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x >= 7'd99 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h00;  // black
                else if (x == 7'd115) pixel = 8'hA8;  // light gray
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x == 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'h54;  // dark gray
                else if (x == 7'd120) pixel = 8'hA8;  // light gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd51: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd33) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd109) pixel = 8'h54;  // dark gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h00;  // black
                else if (x == 7'd115) pixel = 8'h54;  // dark gray
                else if (x == 7'd116) pixel = 8'hA8;  // light gray
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd52: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd32) pixel = 8'h00;  // black
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x >= 7'd34 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd103) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd109) pixel = 8'h54;  // dark gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x == 7'd113) pixel = 8'h54;  // dark gray
                else if (x >= 7'd114 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x == 7'd116) pixel = 8'hA8;  // light gray
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd53: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x == 7'd29) pixel = 8'h54;  // dark gray
                else if (x >= 7'd30 && x <= 7'd31) pixel = 8'h00;  // black
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x == 7'd83) pixel = 8'h00;  // black
                else if (x >= 7'd84 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x >= 7'd109 && x <= 7'd111) pixel = 8'hA8;  // light gray
                else if (x >= 7'd114 && x <= 7'd116) pixel = 8'hA8;  // light gray
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h00;  // black
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd54: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd19) pixel = 8'h00;  // black
                else if (x >= 7'd20 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x == 7'd25) pixel = 8'h00;  // black
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x == 7'd28) pixel = 8'hA8;  // light gray
                else if (x >= 7'd29 && x <= 7'd31) pixel = 8'h00;  // black
                else if (x >= 7'd32 && x <= 7'd40) pixel = 8'hA8;  // light gray
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd42 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x == 7'd83) pixel = 8'h00;  // black
                else if (x >= 7'd84 && x <= 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'hA8;  // light gray
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd55: begin
                if (x >= 7'd7 && x <= 7'd8) pixel = 8'hE0;  // orange
                else if (x == 7'd9) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd10 && x <= 7'd18) pixel = 8'h00;  // black
                else if (x >= 7'd19 && x <= 7'd21) pixel = 8'h08;  // dark blue
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x >= 7'd28 && x <= 7'd30) pixel = 8'h00;  // black
                else if (x >= 7'd31 && x <= 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x >= 7'd44 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd86 && x <= 7'd87) pixel = 8'h00;  // black
                else if (x >= 7'd88 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
                else if (x >= 7'd108 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'h54;  // dark gray
                else if (x == 7'd120) pixel = 8'hA8;  // light gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd56: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x >= 7'd10 && x <= 7'd17) pixel = 8'h00;  // black
                else if (x >= 7'd18 && x <= 7'd20) pixel = 8'h08;  // dark blue
                else if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x == 7'd24) pixel = 8'hA8;  // light gray
                else if (x >= 7'd25 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x == 7'd29) pixel = 8'h54;  // dark gray
                else if (x >= 7'd30 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd46) pixel = 8'hA8;  // light gray
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'hA8;  // light gray
                else if (x >= 7'd87 && x <= 7'd88) pixel = 8'h00;  // black
                else if (x >= 7'd89 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd111) pixel = 8'hA8;  // light gray
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x == 7'd120) pixel = 8'h54;  // dark gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd57: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x >= 7'd10 && x <= 7'd16) pixel = 8'h00;  // black
                else if (x >= 7'd17 && x <= 7'd19) pixel = 8'h08;  // dark blue
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd26) pixel = 8'h00;  // black
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x >= 7'd28 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x >= 7'd38 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'h54;  // dark gray
                else if (x == 7'd44) pixel = 8'h54;  // dark gray
                else if (x == 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'h54;  // dark gray
                else if (x == 7'd87) pixel = 8'h54;  // dark gray
                else if (x >= 7'd88 && x <= 7'd89) pixel = 8'h00;  // black
                else if (x >= 7'd90 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x >= 7'd98 && x <= 7'd99) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x >= 7'd107 && x <= 7'd109) pixel = 8'hA8;  // light gray
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x == 7'd116) pixel = 8'hA8;  // light gray
                else if (x == 7'd119) pixel = 8'hA8;  // light gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h08;  // dark blue
                else if (x == 7'd122) pixel = 8'h54;  // dark gray
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd58: begin
                if (x >= 7'd7 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h40;  // dark red
                else if (x >= 7'd11 && x <= 7'd15) pixel = 8'h00;  // black
                else if (x >= 7'd16 && x <= 7'd18) pixel = 8'h08;  // dark blue
                else if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x >= 7'd22 && x <= 7'd24) pixel = 8'h00;  // black
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd36) pixel = 8'hA8;  // light gray
                else if (x >= 7'd37 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h54;  // dark gray
                else if (x >= 7'd45 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x >= 7'd81 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'h54;  // dark gray
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x >= 7'd88 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x >= 7'd91 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h54;  // dark gray
                else if (x == 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x >= 7'd109 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x == 7'd113) pixel = 8'hA8;  // light gray
                else if (x == 7'd118) pixel = 8'h54;  // dark gray
                else if (x >= 7'd119 && x <= 7'd120) pixel = 8'h08;  // dark blue
                else if (x == 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h54;  // dark gray
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'hE0;  // orange
            end
            7'd59: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x >= 7'd11 && x <= 7'd15) pixel = 8'h00;  // black
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x == 7'd20) pixel = 8'hA8;  // light gray
                else if (x >= 7'd21 && x <= 7'd23) pixel = 8'h00;  // black
                else if (x >= 7'd24 && x <= 7'd35) pixel = 8'hA8;  // light gray
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h54;  // dark gray
                else if (x == 7'd44) pixel = 8'hA8;  // light gray
                else if (x >= 7'd45 && x <= 7'd47) pixel = 8'h00;  // black
                else if (x == 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd80 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd88) pixel = 8'h54;  // dark gray
                else if (x >= 7'd89 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x >= 7'd92 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h54;  // dark gray
                else if (x == 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
                else if (x >= 7'd108 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x == 7'd115) pixel = 8'hA8;  // light gray
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd119) pixel = 8'h08;  // dark blue
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h54;  // dark gray
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd60: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x >= 7'd11 && x <= 7'd14) pixel = 8'h00;  // black
                else if (x >= 7'd15 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd34) pixel = 8'hA8;  // light gray
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd36 && x <= 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd45 && x <= 7'd48) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'hA8;  // light gray
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x >= 7'd79 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd88) pixel = 8'hA8;  // light gray
                else if (x >= 7'd89 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'h54;  // dark gray
                else if (x >= 7'd93 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h00;  // black
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd107 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd118) pixel = 8'h08;  // dark blue
                else if (x >= 7'd119 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd61: begin
                if (x >= 7'd8 && x <= 7'd9) pixel = 8'hE0;  // orange
                else if (x == 7'd10) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd11 && x <= 7'd14) pixel = 8'h00;  // black
                else if (x >= 7'd15 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x >= 7'd22 && x <= 7'd27) pixel = 8'h54;  // dark gray
                else if (x >= 7'd28 && x <= 7'd34) pixel = 8'hA8;  // light gray
                else if (x >= 7'd35 && x <= 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd89 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x >= 7'd93 && x <= 7'd95) pixel = 8'hA8;  // light gray
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x == 7'd112) pixel = 8'h00;  // black
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'h08;  // dark blue
                else if (x >= 7'd116 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd62: begin
                if (x >= 7'd8 && x <= 7'd10) pixel = 8'hE0;  // orange
                else if (x >= 7'd11 && x <= 7'd14) pixel = 8'h00;  // black
                else if (x >= 7'd15 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x >= 7'd19 && x <= 7'd26) pixel = 8'h00;  // black
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x >= 7'd28 && x <= 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd34) pixel = 8'h54;  // dark gray
                else if (x >= 7'd35 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x >= 7'd47 && x <= 7'd52) pixel = 8'h00;  // black
                else if (x == 7'd53) pixel = 8'h54;  // dark gray
                else if (x >= 7'd54 && x <= 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd61) pixel = 8'hA8;  // light gray
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'h00;  // black
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x == 7'd66) pixel = 8'hA8;  // light gray
                else if (x >= 7'd72 && x <= 7'd73) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'h54;  // dark gray
                else if (x >= 7'd75 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd89) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x >= 7'd94 && x <= 7'd95) pixel = 8'hA8;  // light gray
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x >= 7'd102 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x >= 7'd122 && x <= 7'd124) pixel = 8'hE0;  // orange
            end
            7'd63: begin
                if (x >= 7'd8 && x <= 7'd10) pixel = 8'hE0;  // orange
                else if (x >= 7'd11 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x >= 7'd19 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd25) pixel = 8'h00;  // black
                else if (x == 7'd26) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd33) pixel = 8'hA8;  // light gray
                else if (x >= 7'd34 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x == 7'd38) pixel = 8'hA8;  // light gray
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd54) pixel = 8'h00;  // black
                else if (x == 7'd55) pixel = 8'h54;  // dark gray
                else if (x >= 7'd56 && x <= 7'd58) pixel = 8'hA8;  // light gray
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd67) pixel = 8'h00;  // black
                else if (x == 7'd68) pixel = 8'h54;  // dark gray
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'hA8;  // light gray
                else if (x == 7'd72) pixel = 8'h54;  // dark gray
                else if (x >= 7'd73 && x <= 7'd79) pixel = 8'h00;  // black
                else if (x == 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd89) pixel = 8'hA8;  // light gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'hA8;  // light gray
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd96) pixel = 8'h00;  // black
                else if (x == 7'd97) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'h40;  // dark red
                else if (x >= 7'd122 && x <= 7'd123) pixel = 8'hE0;  // orange
            end
            7'd64: begin
                if (x >= 7'd9 && x <= 7'd10) pixel = 8'hE0;  // orange
                else if (x == 7'd11) pixel = 8'h54;  // dark gray
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'hA8;  // light gray
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x >= 7'd22 && x <= 7'd24) pixel = 8'h00;  // black
                else if (x >= 7'd25 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x >= 7'd41 && x <= 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x >= 7'd49 && x <= 7'd62) pixel = 8'h00;  // black
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'h54;  // dark gray
                else if (x >= 7'd65 && x <= 7'd78) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd95 && x <= 7'd96) pixel = 8'h00;  // black
                else if (x == 7'd97) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x >= 7'd112 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'h54;  // dark gray
                else if (x >= 7'd122 && x <= 7'd123) pixel = 8'hE0;  // orange
            end
            7'd65: begin
                if (x >= 7'd9 && x <= 7'd10) pixel = 8'hE0;  // orange
                else if (x == 7'd11) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'hA8;  // light gray
                else if (x == 7'd20) pixel = 8'hA8;  // light gray
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x >= 7'd40 && x <= 7'd41) pixel = 8'hA8;  // light gray
                else if (x >= 7'd42 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'hA8;  // light gray
                else if (x >= 7'd50 && x <= 7'd60) pixel = 8'h00;  // black
                else if (x == 7'd61) pixel = 8'h54;  // dark gray
                else if (x == 7'd62) pixel = 8'hA8;  // light gray
                else if (x == 7'd65) pixel = 8'hA8;  // light gray
                else if (x == 7'd66) pixel = 8'h54;  // dark gray
                else if (x >= 7'd67 && x <= 7'd77) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd85) pixel = 8'h00;  // black
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd88) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd96) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x >= 7'd112 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd122 && x <= 7'd123) pixel = 8'hE0;  // orange
            end
            7'd66: begin
                if (x >= 7'd9 && x <= 7'd10) pixel = 8'hE0;  // orange
                else if (x == 7'd11) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x == 7'd19) pixel = 8'hA8;  // light gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x >= 7'd42 && x <= 7'd47) pixel = 8'h00;  // black
                else if (x == 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd51) pixel = 8'h00;  // black
                else if (x >= 7'd52 && x <= 7'd53) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x >= 7'd55 && x <= 7'd57) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd59) pixel = 8'h54;  // dark gray
                else if (x == 7'd60) pixel = 8'hA8;  // light gray
                else if (x == 7'd67) pixel = 8'hA8;  // light gray
                else if (x >= 7'd68 && x <= 7'd69) pixel = 8'h54;  // dark gray
                else if (x >= 7'd70 && x <= 7'd72) pixel = 8'h00;  // black
                else if (x == 7'd73) pixel = 8'h54;  // dark gray
                else if (x >= 7'd74 && x <= 7'd75) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd77) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd81 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd95) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x >= 7'd121 && x <= 7'd123) pixel = 8'hE0;  // orange
            end
            7'd67: begin
                if (x >= 7'd9 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x >= 7'd19 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd22 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd42 && x <= 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd44) pixel = 8'hA8;  // light gray
                else if (x >= 7'd45 && x <= 7'd48) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'hA8;  // light gray
                else if (x >= 7'd51 && x <= 7'd52) pixel = 8'hA8;  // light gray
                else if (x >= 7'd75 && x <= 7'd76) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x >= 7'd84 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd95) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd103) pixel = 8'hA8;  // light gray
                else if (x >= 7'd104 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x == 7'd120) pixel = 8'h40;  // dark red
                else if (x >= 7'd121 && x <= 7'd123) pixel = 8'hE0;  // orange
            end
            7'd68: begin
                if (x >= 7'd10 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x == 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x >= 7'd19 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x >= 7'd21 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x >= 7'd32 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x == 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd61) pixel = 8'hA8;  // light gray
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'h00;  // black
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x >= 7'd66 && x <= 7'd67) pixel = 8'hA8;  // light gray
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd95) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd102) pixel = 8'hA8;  // light gray
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x >= 7'd112 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x >= 7'd114 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x == 7'd120) pixel = 8'h54;  // dark gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'hE0;  // orange
            end
            7'd69: begin
                if (x >= 7'd10 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'h00;  // black
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x >= 7'd21 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x == 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x >= 7'd47 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd68) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h54;  // dark gray
                else if (x == 7'd70) pixel = 8'hA8;  // light gray
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd94) pixel = 8'h00;  // black
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x == 7'd100) pixel = 8'h00;  // black
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'hA8;  // light gray
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd109) pixel = 8'h54;  // dark gray
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x >= 7'd114 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x >= 7'd120 && x <= 7'd122) pixel = 8'hE0;  // orange
            end
            7'd70: begin
                if (x >= 7'd10 && x <= 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd15) pixel = 8'hA8;  // light gray
                else if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'h00;  // black
                else if (x >= 7'd20 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x == 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x >= 7'd47 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd56) pixel = 8'h54;  // dark gray
                else if (x >= 7'd57 && x <= 7'd62) pixel = 8'h00;  // black
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x >= 7'd66 && x <= 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd72) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'h54;  // dark gray
                else if (x >= 7'd77 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd85) pixel = 8'h00;  // black
                else if (x == 7'd86) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd94) pixel = 8'h00;  // black
                else if (x == 7'd95) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h00;  // black
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'hA8;  // light gray
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'h00;  // black
                else if (x >= 7'd105 && x <= 7'd107) pixel = 8'h54;  // dark gray
                else if (x >= 7'd108 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x >= 7'd112 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x >= 7'd114 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x >= 7'd120 && x <= 7'd122) pixel = 8'hE0;  // orange
            end
            7'd71: begin
                if (x == 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd15) pixel = 8'hA8;  // light gray
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'h00;  // black
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd42) pixel = 8'hA8;  // light gray
                else if (x == 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd44) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd48) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'h54;  // dark gray
                else if (x == 7'd54) pixel = 8'hA8;  // light gray
                else if (x >= 7'd55 && x <= 7'd56) pixel = 8'h00;  // black
                else if (x >= 7'd57 && x <= 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd61) pixel = 8'hA8;  // light gray
                else if (x >= 7'd66 && x <= 7'd68) pixel = 8'hA8;  // light gray
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'h54;  // dark gray
                else if (x == 7'd72) pixel = 8'h00;  // black
                else if (x == 7'd73) pixel = 8'h54;  // dark gray
                else if (x == 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd77) pixel = 8'hA8;  // light gray
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd85) pixel = 8'h54;  // dark gray
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd94) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h00;  // black
                else if (x >= 7'd100 && x <= 7'd102) pixel = 8'hA8;  // light gray
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'hE0;  // orange
            end
            7'd72: begin
                if (x == 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x == 7'd42) pixel = 8'hA8;  // light gray
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x == 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x == 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x >= 7'd54 && x <= 7'd55) pixel = 8'hA8;  // light gray
                else if (x >= 7'd73 && x <= 7'd74) pixel = 8'hA8;  // light gray
                else if (x == 7'd76) pixel = 8'h54;  // dark gray
                else if (x == 7'd77) pixel = 8'hA8;  // light gray
                else if (x >= 7'd79 && x <= 7'd80) pixel = 8'hA8;  // light gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd102) pixel = 8'hA8;  // light gray
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h00;  // black
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x == 7'd119) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'hE0;  // orange
            end
            7'd73: begin
                if (x == 7'd11) pixel = 8'hE0;  // orange
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x == 7'd44) pixel = 8'h54;  // dark gray
                else if (x == 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x == 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x == 7'd77) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'hA8;  // light gray
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'hA8;  // light gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'h40;  // dark red
                else if (x >= 7'd119 && x <= 7'd121) pixel = 8'hE0;  // orange
            end
            7'd74: begin
                if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x >= 7'd17 && x <= 7'd18) pixel = 8'hA8;  // light gray
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd44) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd46 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'h54;  // dark gray
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'hA8;  // light gray
                else if (x == 7'd89) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd94) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'hA8;  // light gray
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd119 && x <= 7'd120) pixel = 8'hE0;  // orange
            end
            7'd75: begin
                if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd24) pixel = 8'hA8;  // light gray
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd46) pixel = 8'hA8;  // light gray
                else if (x >= 7'd47 && x <= 7'd48) pixel = 8'h54;  // dark gray
                else if (x >= 7'd49 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x >= 7'd62 && x <= 7'd67) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd78) pixel = 8'h00;  // black
                else if (x >= 7'd79 && x <= 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd88) pixel = 8'hA8;  // light gray
                else if (x >= 7'd89 && x <= 7'd93) pixel = 8'h00;  // black
                else if (x == 7'd97) pixel = 8'hA8;  // light gray
                else if (x == 7'd98) pixel = 8'h00;  // black
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'h00;  // black
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x >= 7'd118 && x <= 7'd120) pixel = 8'hE0;  // orange
            end
            7'd76: begin
                if (x >= 7'd5 && x <= 7'd7) pixel = 8'hA8;  // light gray
                else if (x == 7'd12) pixel = 8'hE0;  // orange
                else if (x == 7'd13) pixel = 8'h00;  // black
                else if (x >= 7'd14 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x >= 7'd24 && x <= 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd34) pixel = 8'h54;  // dark gray
                else if (x >= 7'd35 && x <= 7'd38) pixel = 8'h00;  // black
                else if (x == 7'd39) pixel = 8'h54;  // dark gray
                else if (x >= 7'd45 && x <= 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd59) pixel = 8'hA8;  // light gray
                else if (x == 7'd60) pixel = 8'h54;  // dark gray
                else if (x >= 7'd61 && x <= 7'd68) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h54;  // dark gray
                else if (x == 7'd70) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd88 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x == 7'd97) pixel = 8'h54;  // dark gray
                else if (x == 7'd98) pixel = 8'h00;  // black
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'h00;  // black
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x >= 7'd115 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd118 && x <= 7'd119) pixel = 8'hE0;  // orange
                else if (x >= 7'd120 && x <= 7'd122) pixel = 8'hA8;  // light gray
            end
            7'd77: begin
                if (x == 7'd2) pixel = 8'hA8;  // light gray
                else if (x >= 7'd3 && x <= 7'd8) pixel = 8'h08;  // dark blue
                else if (x == 7'd9) pixel = 8'hA8;  // light gray
                else if (x == 7'd13) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd14) pixel = 8'h00;  // black
                else if (x >= 7'd15 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x == 7'd24) pixel = 8'h54;  // dark gray
                else if (x == 7'd25) pixel = 8'h00;  // black
                else if (x >= 7'd26 && x <= 7'd35) pixel = 8'hA8;  // light gray
                else if (x >= 7'd36 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd48) pixel = 8'hA8;  // light gray
                else if (x >= 7'd49 && x <= 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd57) pixel = 8'hA8;  // light gray
                else if (x >= 7'd58 && x <= 7'd59) pixel = 8'h00;  // black
                else if (x >= 7'd60 && x <= 7'd61) pixel = 8'h54;  // dark gray
                else if (x >= 7'd62 && x <= 7'd67) pixel = 8'hA8;  // light gray
                else if (x == 7'd68) pixel = 8'h54;  // dark gray
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'h00;  // black
                else if (x == 7'd72) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd78) pixel = 8'h54;  // dark gray
                else if (x >= 7'd79 && x <= 7'd81) pixel = 8'hA8;  // light gray
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x >= 7'd88 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'hA8;  // light gray
                else if (x >= 7'd97 && x <= 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'h40;  // dark red
                else if (x == 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'h00;  // black
                else if (x >= 7'd112 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x >= 7'd114 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd117) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd118) pixel = 8'h54;  // dark gray
                else if (x >= 7'd119 && x <= 7'd123) pixel = 8'h08;  // dark blue
                else if (x == 7'd124) pixel = 8'h54;  // dark gray
            end
            7'd78: begin
                if (x == 7'd1) pixel = 8'hA8;  // light gray
                else if (x >= 7'd2 && x <= 7'd9) pixel = 8'h08;  // dark blue
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'hE0;  // orange
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x >= 7'd24 && x <= 7'd25) pixel = 8'h00;  // black
                else if (x == 7'd26) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd29) pixel = 8'hA8;  // light gray
                else if (x == 7'd30) pixel = 8'h54;  // dark gray
                else if (x >= 7'd31 && x <= 7'd35) pixel = 8'hA8;  // light gray
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x >= 7'd37 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'h54;  // dark gray
                else if (x == 7'd46) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x == 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x >= 7'd56 && x <= 7'd57) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x == 7'd71) pixel = 8'hA8;  // light gray
                else if (x >= 7'd72 && x <= 7'd73) pixel = 8'h54;  // dark gray
                else if (x == 7'd77) pixel = 8'hA8;  // light gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'h54;  // dark gray
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd87 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd93) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x == 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x == 7'd116) pixel = 8'h40;  // dark red
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd118 && x <= 7'd125) pixel = 8'h08;  // dark blue
                else if (x == 7'd126) pixel = 8'hA8;  // light gray
            end
            7'd79: begin
                if (x >= 7'd1 && x <= 7'd3) pixel = 8'h08;  // dark blue
                else if (x == 7'd4) pixel = 8'hA8;  // light gray
                else if (x >= 7'd8 && x <= 7'd10) pixel = 8'h08;  // dark blue
                else if (x == 7'd11) pixel = 8'hA8;  // light gray
                else if (x == 7'd14) pixel = 8'hE0;  // orange
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h00;  // black
                else if (x >= 7'd22 && x <= 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd25) pixel = 8'h00;  // black
                else if (x == 7'd26) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd29) pixel = 8'hA8;  // light gray
                else if (x >= 7'd30 && x <= 7'd31) pixel = 8'h54;  // dark gray
                else if (x >= 7'd32 && x <= 7'd36) pixel = 8'hA8;  // light gray
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x >= 7'd38 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x == 7'd47) pixel = 8'h00;  // black
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'hA8;  // light gray
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'hA8;  // light gray
                else if (x >= 7'd77 && x <= 7'd79) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'h00;  // black
                else if (x >= 7'd81 && x <= 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'hA8;  // light gray
                else if (x >= 7'd87 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x >= 7'd98 && x <= 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'hA8;  // light gray
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x >= 7'd113 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h08;  // dark blue
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x == 7'd123) pixel = 8'hA8;  // light gray
                else if (x >= 7'd124 && x <= 7'd126) pixel = 8'h08;  // dark blue
            end
            7'd80: begin
                if (x == 7'd0) pixel = 8'hA8;  // light gray
                else if (x >= 7'd1 && x <= 7'd2) pixel = 8'h08;  // dark blue
                else if (x == 7'd3) pixel = 8'hA8;  // light gray
                else if (x == 7'd6) pixel = 8'hA8;  // light gray
                else if (x >= 7'd9 && x <= 7'd11) pixel = 8'h08;  // dark blue
                else if (x == 7'd14) pixel = 8'hE0;  // orange
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd21) pixel = 8'h00;  // black
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd26) pixel = 8'h00;  // black
                else if (x >= 7'd27 && x <= 7'd30) pixel = 8'hA8;  // light gray
                else if (x == 7'd31) pixel = 8'h00;  // black
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x >= 7'd38 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd47) pixel = 8'h00;  // black
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'hA8;  // light gray
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'h54;  // dark gray
                else if (x == 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h00;  // black
                else if (x >= 7'd98 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x >= 7'd112 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x >= 7'd116 && x <= 7'd118) pixel = 8'h08;  // dark blue
                else if (x == 7'd121) pixel = 8'hA8;  // light gray
                else if (x == 7'd124) pixel = 8'h54;  // dark gray
                else if (x >= 7'd125 && x <= 7'd126) pixel = 8'h08;  // dark blue
            end
            7'd81: begin
                if (x == 7'd0) pixel = 8'hA8;  // light gray
                else if (x == 7'd1) pixel = 8'h00;  // black
                else if (x == 7'd2) pixel = 8'h08;  // dark blue
                else if (x == 7'd3) pixel = 8'hA8;  // light gray
                else if (x == 7'd5) pixel = 8'h54;  // dark gray
                else if (x == 7'd6) pixel = 8'h00;  // black
                else if (x == 7'd7) pixel = 8'hA8;  // light gray
                else if (x == 7'd9) pixel = 8'hA8;  // light gray
                else if (x >= 7'd10 && x <= 7'd11) pixel = 8'h08;  // dark blue
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x == 7'd14) pixel = 8'hE0;  // orange
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd16 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x >= 7'd21 && x <= 7'd26) pixel = 8'h00;  // black
                else if (x == 7'd27) pixel = 8'h54;  // dark gray
                else if (x >= 7'd28 && x <= 7'd30) pixel = 8'hA8;  // light gray
                else if (x >= 7'd31 && x <= 7'd32) pixel = 8'h00;  // black
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x >= 7'd34 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd44) pixel = 8'hA8;  // light gray
                else if (x >= 7'd45 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd50) pixel = 8'hA8;  // light gray
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd81 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x >= 7'd86 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'h54;  // dark gray
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd103) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x >= 7'd112 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x >= 7'd116 && x <= 7'd117) pixel = 8'h08;  // dark blue
                else if (x == 7'd118) pixel = 8'hA8;  // light gray
                else if (x == 7'd120) pixel = 8'hA8;  // light gray
                else if (x == 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'hA8;  // light gray
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
                else if (x >= 7'd125 && x <= 7'd126) pixel = 8'h08;  // dark blue
                else if (x == 7'd127) pixel = 8'hA8;  // light gray
            end
            7'd82: begin
                if (x == 7'd0) pixel = 8'hA8;  // light gray
                else if (x >= 7'd1 && x <= 7'd2) pixel = 8'h08;  // dark blue
                else if (x == 7'd3) pixel = 8'hA8;  // light gray
                else if (x == 7'd5) pixel = 8'hA8;  // light gray
                else if (x >= 7'd6 && x <= 7'd7) pixel = 8'h00;  // black
                else if (x >= 7'd10 && x <= 7'd12) pixel = 8'h08;  // dark blue
                else if (x == 7'd13) pixel = 8'hA8;  // light gray
                else if (x == 7'd15) pixel = 8'hA8;  // light gray
                else if (x == 7'd16) pixel = 8'h00;  // black
                else if (x == 7'd17) pixel = 8'h08;  // dark blue
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x >= 7'd21 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x >= 7'd28 && x <= 7'd30) pixel = 8'hA8;  // light gray
                else if (x == 7'd31) pixel = 8'h54;  // dark gray
                else if (x >= 7'd32 && x <= 7'd33) pixel = 8'h00;  // black
                else if (x >= 7'd34 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x >= 7'd42 && x <= 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x >= 7'd47 && x <= 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd63) pixel = 8'hA8;  // light gray
                else if (x >= 7'd64 && x <= 7'd71) pixel = 8'h54;  // dark gray
                else if (x == 7'd72) pixel = 8'hA8;  // light gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'hA8;  // light gray
                else if (x >= 7'd81 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x >= 7'd86 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x >= 7'd102 && x <= 7'd106) pixel = 8'h00;  // black
                else if (x == 7'd109) pixel = 8'h54;  // dark gray
                else if (x >= 7'd110 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x >= 7'd112 && x <= 7'd114) pixel = 8'h00;  // black
                else if (x >= 7'd115 && x <= 7'd116) pixel = 8'h08;  // dark blue
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'hA8;  // light gray
                else if (x == 7'd124) pixel = 8'h54;  // dark gray
                else if (x >= 7'd125 && x <= 7'd126) pixel = 8'h08;  // dark blue
            end
            7'd83: begin
                if (x >= 7'd1 && x <= 7'd2) pixel = 8'h08;  // dark blue
                else if (x == 7'd3) pixel = 8'h54;  // dark gray
                else if (x == 7'd5) pixel = 8'hA8;  // light gray
                else if (x >= 7'd6 && x <= 7'd7) pixel = 8'h00;  // black
                else if (x == 7'd8) pixel = 8'hA8;  // light gray
                else if (x == 7'd10) pixel = 8'hA8;  // light gray
                else if (x >= 7'd11 && x <= 7'd13) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x >= 7'd17 && x <= 7'd18) pixel = 8'h08;  // dark blue
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd22 && x <= 7'd23) pixel = 8'h00;  // black
                else if (x >= 7'd24 && x <= 7'd25) pixel = 8'hA8;  // light gray
                else if (x >= 7'd26 && x <= 7'd28) pixel = 8'h00;  // black
                else if (x >= 7'd29 && x <= 7'd30) pixel = 8'h54;  // dark gray
                else if (x >= 7'd31 && x <= 7'd33) pixel = 8'h00;  // black
                else if (x == 7'd34) pixel = 8'h54;  // dark gray
                else if (x >= 7'd35 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x >= 7'd39 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd42) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x >= 7'd47 && x <= 7'd48) pixel = 8'hA8;  // light gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd60) pixel = 8'hA8;  // light gray
                else if (x == 7'd61) pixel = 8'h54;  // dark gray
                else if (x >= 7'd62 && x <= 7'd73) pixel = 8'h00;  // black
                else if (x == 7'd74) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd80) pixel = 8'hA8;  // light gray
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd84) pixel = 8'h00;  // black
                else if (x == 7'd85) pixel = 8'h54;  // dark gray
                else if (x >= 7'd86 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd96) pixel = 8'h00;  // black
                else if (x >= 7'd97 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd103) pixel = 8'h54;  // dark gray
                else if (x >= 7'd104 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x == 7'd108) pixel = 8'hA8;  // light gray
                else if (x >= 7'd109 && x <= 7'd110) pixel = 8'h08;  // dark blue
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'h00;  // black
                else if (x >= 7'd114 && x <= 7'd116) pixel = 8'h08;  // dark blue
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x == 7'd124) pixel = 8'h08;  // dark blue
                else if (x == 7'd125) pixel = 8'h00;  // black
                else if (x == 7'd126) pixel = 8'h08;  // dark blue
            end
            7'd84: begin
                if (x >= 7'd1 && x <= 7'd3) pixel = 8'h08;  // dark blue
                else if (x >= 7'd6 && x <= 7'd8) pixel = 8'h00;  // black
                else if (x == 7'd11) pixel = 8'hA8;  // light gray
                else if (x >= 7'd12 && x <= 7'd13) pixel = 8'h08;  // dark blue
                else if (x == 7'd14) pixel = 8'h54;  // dark gray
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x >= 7'd17 && x <= 7'd18) pixel = 8'h08;  // dark blue
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x >= 7'd27 && x <= 7'd34) pixel = 8'h00;  // black
                else if (x >= 7'd35 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x == 7'd39) pixel = 8'h54;  // dark gray
                else if (x >= 7'd40 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x >= 7'd46 && x <= 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x >= 7'd59 && x <= 7'd62) pixel = 8'h00;  // black
                else if (x >= 7'd63 && x <= 7'd64) pixel = 8'h54;  // dark gray
                else if (x >= 7'd65 && x <= 7'd70) pixel = 8'hA8;  // light gray
                else if (x >= 7'd71 && x <= 7'd72) pixel = 8'h54;  // dark gray
                else if (x >= 7'd73 && x <= 7'd75) pixel = 8'h00;  // black
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x == 7'd95) pixel = 8'hA8;  // light gray
                else if (x == 7'd96) pixel = 8'h00;  // black
                else if (x >= 7'd97 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x >= 7'd108 && x <= 7'd110) pixel = 8'h08;  // dark blue
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'h00;  // black
                else if (x >= 7'd114 && x <= 7'd115) pixel = 8'h08;  // dark blue
                else if (x == 7'd116) pixel = 8'hA8;  // light gray
                else if (x == 7'd118) pixel = 8'hA8;  // light gray
                else if (x >= 7'd119 && x <= 7'd121) pixel = 8'h00;  // black
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'h08;  // dark blue
                else if (x == 7'd126) pixel = 8'h54;  // dark gray
            end
            7'd85: begin
                if (x == 7'd1) pixel = 8'h54;  // dark gray
                else if (x >= 7'd2 && x <= 7'd3) pixel = 8'h08;  // dark blue
                else if (x == 7'd4) pixel = 8'hA8;  // light gray
                else if (x == 7'd6) pixel = 8'h54;  // dark gray
                else if (x >= 7'd7 && x <= 7'd9) pixel = 8'h00;  // black
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd14) pixel = 8'h08;  // dark blue
                else if (x == 7'd15) pixel = 8'hA8;  // light gray
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'h08;  // dark blue
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd28) pixel = 8'h54;  // dark gray
                else if (x == 7'd29) pixel = 8'h00;  // black
                else if (x == 7'd30) pixel = 8'h54;  // dark gray
                else if (x == 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x >= 7'd36 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x == 7'd39) pixel = 8'h54;  // dark gray
                else if (x >= 7'd40 && x <= 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd46 && x <= 7'd47) pixel = 8'hA8;  // light gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x == 7'd57) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'h00;  // black
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd61) pixel = 8'hA8;  // light gray
                else if (x == 7'd74) pixel = 8'hA8;  // light gray
                else if (x >= 7'd75 && x <= 7'd76) pixel = 8'h54;  // dark gray
                else if (x == 7'd78) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'h00;  // black
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'hA8;  // light gray
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x >= 7'd83 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd91) pixel = 8'hA8;  // light gray
                else if (x == 7'd95) pixel = 8'hA8;  // light gray
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x >= 7'd97 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
                else if (x >= 7'd108 && x <= 7'd109) pixel = 8'h08;  // dark blue
                else if (x >= 7'd110 && x <= 7'd112) pixel = 8'h00;  // black
                else if (x >= 7'd113 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x == 7'd115) pixel = 8'h54;  // dark gray
                else if (x >= 7'd118 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'h54;  // dark gray
                else if (x == 7'd123) pixel = 8'hA8;  // light gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'h08;  // dark blue
                else if (x == 7'd126) pixel = 8'hA8;  // light gray
            end
            7'd86: begin
                if (x == 7'd1) pixel = 8'hA8;  // light gray
                else if (x == 7'd2) pixel = 8'h08;  // dark blue
                else if (x == 7'd3) pixel = 8'h00;  // black
                else if (x == 7'd4) pixel = 8'hA8;  // light gray
                else if (x == 7'd6) pixel = 8'hA8;  // light gray
                else if (x >= 7'd7 && x <= 7'd9) pixel = 8'h00;  // black
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'hA8;  // light gray
                else if (x == 7'd17) pixel = 8'hE0;  // orange
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x >= 7'd19 && x <= 7'd21) pixel = 8'h08;  // dark blue
                else if (x == 7'd22) pixel = 8'hA8;  // light gray
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd25) pixel = 8'h08;  // dark blue
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x >= 7'd34 && x <= 7'd35) pixel = 8'h00;  // black
                else if (x == 7'd36) pixel = 8'h54;  // dark gray
                else if (x == 7'd37) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd44) pixel = 8'h00;  // black
                else if (x >= 7'd45 && x <= 7'd47) pixel = 8'hA8;  // light gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd56) pixel = 8'h00;  // black
                else if (x == 7'd57) pixel = 8'h54;  // dark gray
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x >= 7'd79 && x <= 7'd80) pixel = 8'h00;  // black
                else if (x >= 7'd81 && x <= 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd91) pixel = 8'hA8;  // light gray
                else if (x >= 7'd95 && x <= 7'd96) pixel = 8'h54;  // dark gray
                else if (x >= 7'd97 && x <= 7'd100) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x >= 7'd106 && x <= 7'd108) pixel = 8'h08;  // dark blue
                else if (x >= 7'd109 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x >= 7'd112 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd118 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'hA8;  // light gray
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
                else if (x >= 7'd124 && x <= 7'd125) pixel = 8'h08;  // dark blue
            end
            7'd87: begin
                if (x >= 7'd2 && x <= 7'd4) pixel = 8'h08;  // dark blue
                else if (x >= 7'd7 && x <= 7'd10) pixel = 8'h00;  // black
                else if (x == 7'd11) pixel = 8'hA8;  // light gray
                else if (x >= 7'd14 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x == 7'd18) pixel = 8'hE0;  // orange
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd27) pixel = 8'h08;  // dark blue
                else if (x >= 7'd28 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x >= 7'd34 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x >= 7'd38 && x <= 7'd43) pixel = 8'h00;  // black
                else if (x == 7'd44) pixel = 8'h54;  // dark gray
                else if (x >= 7'd45 && x <= 7'd47) pixel = 8'hA8;  // light gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'hA8;  // light gray
                else if (x == 7'd55) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x == 7'd80) pixel = 8'h00;  // black
                else if (x == 7'd81) pixel = 8'h54;  // dark gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x == 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd90) pixel = 8'h00;  // black
                else if (x == 7'd95) pixel = 8'h00;  // black
                else if (x >= 7'd96 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd105) pixel = 8'h00;  // black
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h08;  // dark blue
                else if (x >= 7'd108 && x <= 7'd110) pixel = 8'h00;  // black
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd120) pixel = 8'h00;  // black
                else if (x >= 7'd123 && x <= 7'd125) pixel = 8'h08;  // dark blue
            end
            7'd88: begin
                if (x == 7'd2) pixel = 8'h54;  // dark gray
                else if (x >= 7'd3 && x <= 7'd4) pixel = 8'h08;  // dark blue
                else if (x == 7'd5) pixel = 8'hA8;  // light gray
                else if (x == 7'd7) pixel = 8'h54;  // dark gray
                else if (x >= 7'd8 && x <= 7'd11) pixel = 8'h00;  // black
                else if (x == 7'd12) pixel = 8'hA8;  // light gray
                else if (x >= 7'd15 && x <= 7'd17) pixel = 8'h08;  // dark blue
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x == 7'd19) pixel = 8'hE0;  // orange
                else if (x == 7'd20) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd22 && x <= 7'd25) pixel = 8'h00;  // black
                else if (x >= 7'd26 && x <= 7'd31) pixel = 8'h08;  // dark blue
                else if (x == 7'd34) pixel = 8'h54;  // dark gray
                else if (x >= 7'd35 && x <= 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x >= 7'd44 && x <= 7'd46) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd82) pixel = 8'h00;  // black
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd89) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x == 7'd94) pixel = 8'hA8;  // light gray
                else if (x == 7'd95) pixel = 8'h00;  // black
                else if (x >= 7'd96 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h08;  // dark blue
                else if (x >= 7'd107 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x >= 7'd110 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x == 7'd115) pixel = 8'hA8;  // light gray
                else if (x >= 7'd116 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x == 7'd120) pixel = 8'h54;  // dark gray
                else if (x == 7'd122) pixel = 8'hA8;  // light gray
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'h08;  // dark blue
                else if (x == 7'd125) pixel = 8'hA8;  // light gray
            end
            7'd89: begin
                if (x == 7'd2) pixel = 8'hA8;  // light gray
                else if (x >= 7'd3 && x <= 7'd4) pixel = 8'h08;  // dark blue
                else if (x == 7'd5) pixel = 8'h54;  // dark gray
                else if (x >= 7'd8 && x <= 7'd12) pixel = 8'h00;  // black
                else if (x == 7'd13) pixel = 8'hA8;  // light gray
                else if (x >= 7'd16 && x <= 7'd18) pixel = 8'h08;  // dark blue
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'hE0;  // orange
                else if (x >= 7'd22 && x <= 7'd29) pixel = 8'h00;  // black
                else if (x >= 7'd30 && x <= 7'd31) pixel = 8'h08;  // dark blue
                else if (x == 7'd32) pixel = 8'h54;  // dark gray
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd36 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x == 7'd42) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd46) pixel = 8'hA8;  // light gray
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x >= 7'd67 && x <= 7'd68) pixel = 8'hA8;  // light gray
                else if (x == 7'd69) pixel = 8'h54;  // dark gray
                else if (x >= 7'd70 && x <= 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd75) pixel = 8'h54;  // dark gray
                else if (x == 7'd76) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd80 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x >= 7'd84 && x <= 7'd85) pixel = 8'h54;  // dark gray
                else if (x >= 7'd86 && x <= 7'd89) pixel = 8'h00;  // black
                else if (x >= 7'd94 && x <= 7'd95) pixel = 8'h54;  // dark gray
                else if (x >= 7'd96 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd100) pixel = 8'h54;  // dark gray
                else if (x == 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd102) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd106) pixel = 8'h08;  // dark blue
                else if (x >= 7'd107 && x <= 7'd108) pixel = 8'h00;  // black
                else if (x >= 7'd109 && x <= 7'd111) pixel = 8'h08;  // dark blue
                else if (x == 7'd114) pixel = 8'hA8;  // light gray
                else if (x >= 7'd115 && x <= 7'd119) pixel = 8'h00;  // black
                else if (x == 7'd122) pixel = 8'h54;  // dark gray
                else if (x >= 7'd123 && x <= 7'd124) pixel = 8'h08;  // dark blue
            end
            7'd90: begin
                if (x >= 7'd3 && x <= 7'd5) pixel = 8'h08;  // dark blue
                else if (x == 7'd8) pixel = 8'h54;  // dark gray
                else if (x >= 7'd9 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x == 7'd14) pixel = 8'hA8;  // light gray
                else if (x == 7'd17) pixel = 8'h54;  // dark gray
                else if (x >= 7'd18 && x <= 7'd20) pixel = 8'h08;  // dark blue
                else if (x >= 7'd21 && x <= 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd30) pixel = 8'h00;  // black
                else if (x >= 7'd31 && x <= 7'd32) pixel = 8'h08;  // dark blue
                else if (x == 7'd33) pixel = 8'h54;  // dark gray
                else if (x == 7'd36) pixel = 8'hA8;  // light gray
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x >= 7'd38 && x <= 7'd41) pixel = 8'h00;  // black
                else if (x >= 7'd42 && x <= 7'd44) pixel = 8'h54;  // dark gray
                else if (x >= 7'd45 && x <= 7'd46) pixel = 8'hA8;  // light gray
                else if (x >= 7'd47 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd65) pixel = 8'hA8;  // light gray
                else if (x >= 7'd66 && x <= 7'd77) pixel = 8'h00;  // black
                else if (x == 7'd78) pixel = 8'h54;  // dark gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd80 && x <= 7'd88) pixel = 8'h00;  // black
                else if (x == 7'd89) pixel = 8'hA8;  // light gray
                else if (x == 7'd94) pixel = 8'h00;  // black
                else if (x >= 7'd95 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x >= 7'd105 && x <= 7'd109) pixel = 8'h08;  // dark blue
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x == 7'd113) pixel = 8'hA8;  // light gray
                else if (x >= 7'd114 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x == 7'd121) pixel = 8'hA8;  // light gray
                else if (x >= 7'd122 && x <= 7'd123) pixel = 8'h08;  // dark blue
                else if (x == 7'd124) pixel = 8'h54;  // dark gray
            end
            7'd91: begin
                if (x == 7'd3) pixel = 8'hA8;  // light gray
                else if (x >= 7'd4 && x <= 7'd5) pixel = 8'h08;  // dark blue
                else if (x == 7'd6) pixel = 8'h54;  // dark gray
                else if (x >= 7'd9 && x <= 7'd12) pixel = 8'h00;  // black
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd14) pixel = 8'h00;  // black
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x >= 7'd19 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x >= 7'd23 && x <= 7'd31) pixel = 8'h00;  // black
                else if (x >= 7'd32 && x <= 7'd34) pixel = 8'h08;  // dark blue
                else if (x == 7'd35) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd63) pixel = 8'hA8;  // light gray
                else if (x >= 7'd64 && x <= 7'd67) pixel = 8'h00;  // black
                else if (x >= 7'd68 && x <= 7'd69) pixel = 8'h54;  // dark gray
                else if (x >= 7'd70 && x <= 7'd75) pixel = 8'hA8;  // light gray
                else if (x >= 7'd76 && x <= 7'd77) pixel = 8'h54;  // dark gray
                else if (x >= 7'd78 && x <= 7'd87) pixel = 8'h00;  // black
                else if (x == 7'd88) pixel = 8'h54;  // dark gray
                else if (x >= 7'd93 && x <= 7'd94) pixel = 8'h54;  // dark gray
                else if (x >= 7'd95 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x >= 7'd104 && x <= 7'd108) pixel = 8'h08;  // dark blue
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x == 7'd113) pixel = 8'h00;  // black
                else if (x == 7'd114) pixel = 8'h54;  // dark gray
                else if (x >= 7'd115 && x <= 7'd118) pixel = 8'h00;  // black
                else if (x == 7'd121) pixel = 8'h54;  // dark gray
                else if (x >= 7'd122 && x <= 7'd123) pixel = 8'h08;  // dark blue
                else if (x == 7'd124) pixel = 8'hA8;  // light gray
            end
            7'd92: begin
                if (x == 7'd4) pixel = 8'h54;  // dark gray
                else if (x >= 7'd5 && x <= 7'd6) pixel = 8'h08;  // dark blue
                else if (x == 7'd9) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x == 7'd14) pixel = 8'hA8;  // light gray
                else if (x == 7'd15) pixel = 8'h00;  // black
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x == 7'd20) pixel = 8'hA8;  // light gray
                else if (x >= 7'd21 && x <= 7'd26) pixel = 8'h08;  // dark blue
                else if (x >= 7'd27 && x <= 7'd31) pixel = 8'h00;  // black
                else if (x >= 7'd32 && x <= 7'd34) pixel = 8'h08;  // dark blue
                else if (x == 7'd35) pixel = 8'h00;  // black
                else if (x == 7'd36) pixel = 8'hA8;  // light gray
                else if (x == 7'd38) pixel = 8'hA8;  // light gray
                else if (x >= 7'd39 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x == 7'd61) pixel = 8'hA8;  // light gray
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x == 7'd63) pixel = 8'h00;  // black
                else if (x == 7'd64) pixel = 8'h54;  // dark gray
                else if (x == 7'd65) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x == 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd81 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'h54;  // dark gray
                else if (x == 7'd93) pixel = 8'h00;  // black
                else if (x >= 7'd94 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x >= 7'd104 && x <= 7'd106) pixel = 8'h08;  // dark blue
                else if (x == 7'd107) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd112) pixel = 8'h00;  // black
                else if (x == 7'd113) pixel = 8'hA8;  // light gray
                else if (x >= 7'd114 && x <= 7'd117) pixel = 8'h00;  // black
                else if (x == 7'd118) pixel = 8'hA8;  // light gray
                else if (x == 7'd120) pixel = 8'hA8;  // light gray
                else if (x >= 7'd121 && x <= 7'd122) pixel = 8'h08;  // dark blue
                else if (x == 7'd123) pixel = 8'h54;  // dark gray
            end
            7'd93: begin
                if (x == 7'd4) pixel = 8'hA8;  // light gray
                else if (x >= 7'd5 && x <= 7'd6) pixel = 8'h08;  // dark blue
                else if (x == 7'd7) pixel = 8'h54;  // dark gray
                else if (x >= 7'd10 && x <= 7'd13) pixel = 8'h00;  // black
                else if (x == 7'd14) pixel = 8'h54;  // dark gray
                else if (x == 7'd15) pixel = 8'hA8;  // light gray
                else if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x == 7'd17) pixel = 8'h00;  // black
                else if (x == 7'd18) pixel = 8'h54;  // dark gray
                else if (x == 7'd22) pixel = 8'hA8;  // light gray
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd34) pixel = 8'h08;  // dark blue
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x == 7'd38) pixel = 8'hA8;  // light gray
                else if (x >= 7'd39 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x == 7'd60) pixel = 8'hA8;  // light gray
                else if (x >= 7'd61 && x <= 7'd62) pixel = 8'h54;  // dark gray
                else if (x == 7'd63) pixel = 8'hA8;  // light gray
                else if (x == 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h54;  // dark gray
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x >= 7'd94 && x <= 7'd98) pixel = 8'hA8;  // light gray
                else if (x >= 7'd99 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd105) pixel = 8'hA8;  // light gray
                else if (x == 7'd109) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'h00;  // black
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
                else if (x == 7'd112) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd122) pixel = 8'h08;  // dark blue
            end
            7'd94: begin
                if (x == 7'd5) pixel = 8'h54;  // dark gray
                else if (x >= 7'd6 && x <= 7'd7) pixel = 8'h08;  // dark blue
                else if (x == 7'd8) pixel = 8'hA8;  // light gray
                else if (x == 7'd10) pixel = 8'hA8;  // light gray
                else if (x >= 7'd11 && x <= 7'd15) pixel = 8'h00;  // black
                else if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x >= 7'd18 && x <= 7'd19) pixel = 8'h00;  // black
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x >= 7'd27 && x <= 7'd32) pixel = 8'h54;  // dark gray
                else if (x == 7'd33) pixel = 8'hA8;  // light gray
                else if (x == 7'd37) pixel = 8'h54;  // dark gray
                else if (x >= 7'd38 && x <= 7'd40) pixel = 8'h00;  // black
                else if (x >= 7'd41 && x <= 7'd42) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x == 7'd51) pixel = 8'h54;  // dark gray
                else if (x == 7'd59) pixel = 8'hA8;  // light gray
                else if (x == 7'd60) pixel = 8'h54;  // dark gray
                else if (x == 7'd92) pixel = 8'h54;  // dark gray
                else if (x >= 7'd93 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd107) pixel = 8'h54;  // dark gray
                else if (x >= 7'd108 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd116) pixel = 8'h00;  // black
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
                else if (x >= 7'd120 && x <= 7'd121) pixel = 8'h08;  // dark blue
                else if (x == 7'd122) pixel = 8'hA8;  // light gray
            end
            7'd95: begin
                if (x >= 7'd6 && x <= 7'd8) pixel = 8'h08;  // dark blue
                else if (x == 7'd11) pixel = 8'hA8;  // light gray
                else if (x >= 7'd12 && x <= 7'd16) pixel = 8'h00;  // black
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd24) pixel = 8'hA8;  // light gray
                else if (x == 7'd35) pixel = 8'hA8;  // light gray
                else if (x >= 7'd36 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x == 7'd42) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd59) pixel = 8'hA8;  // light gray
                else if (x >= 7'd91 && x <= 7'd92) pixel = 8'h54;  // dark gray
                else if (x >= 7'd93 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x == 7'd98) pixel = 8'h54;  // dark gray
                else if (x >= 7'd99 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x >= 7'd111 && x <= 7'd115) pixel = 8'h00;  // black
                else if (x == 7'd116) pixel = 8'hA8;  // light gray
                else if (x == 7'd118) pixel = 8'hA8;  // light gray
                else if (x >= 7'd119 && x <= 7'd121) pixel = 8'h08;  // dark blue
            end
            7'd96: begin
                if (x == 7'd6) pixel = 8'hA8;  // light gray
                else if (x >= 7'd7 && x <= 7'd9) pixel = 8'h08;  // dark blue
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd17) pixel = 8'h00;  // black
                else if (x == 7'd18) pixel = 8'hA8;  // light gray
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd22 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x >= 7'd28 && x <= 7'd32) pixel = 8'h54;  // dark gray
                else if (x >= 7'd33 && x <= 7'd37) pixel = 8'h00;  // black
                else if (x == 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x >= 7'd92 && x <= 7'd97) pixel = 8'hA8;  // light gray
                else if (x >= 7'd98 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x == 7'd109) pixel = 8'hA8;  // light gray
                else if (x >= 7'd110 && x <= 7'd114) pixel = 8'h00;  // black
                else if (x == 7'd115) pixel = 8'hA8;  // light gray
                else if (x >= 7'd118 && x <= 7'd120) pixel = 8'h08;  // dark blue
                else if (x == 7'd121) pixel = 8'hA8;  // light gray
            end
            7'd97: begin
                if (x == 7'd7) pixel = 8'h54;  // dark gray
                else if (x >= 7'd8 && x <= 7'd9) pixel = 8'h08;  // dark blue
                else if (x == 7'd10) pixel = 8'h54;  // dark gray
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x >= 7'd14 && x <= 7'd18) pixel = 8'h00;  // black
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x == 7'd24) pixel = 8'h54;  // dark gray
                else if (x >= 7'd25 && x <= 7'd34) pixel = 8'h00;  // black
                else if (x == 7'd35) pixel = 8'h54;  // dark gray
                else if (x == 7'd36) pixel = 8'hA8;  // light gray
                else if (x == 7'd42) pixel = 8'hA8;  // light gray
                else if (x >= 7'd43 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x == 7'd52) pixel = 8'h54;  // dark gray
                else if (x == 7'd89) pixel = 8'hA8;  // light gray
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x == 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd101) pixel = 8'h00;  // black
                else if (x >= 7'd102 && x <= 7'd103) pixel = 8'h54;  // dark gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x >= 7'd109 && x <= 7'd113) pixel = 8'h00;  // black
                else if (x == 7'd114) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd119) pixel = 8'h08;  // dark blue
                else if (x == 7'd120) pixel = 8'hA8;  // light gray
            end
            7'd98: begin
                if (x == 7'd8) pixel = 8'h54;  // dark gray
                else if (x >= 7'd9 && x <= 7'd10) pixel = 8'h08;  // dark blue
                else if (x == 7'd11) pixel = 8'h54;  // dark gray
                else if (x == 7'd14) pixel = 8'h54;  // dark gray
                else if (x >= 7'd15 && x <= 7'd20) pixel = 8'h00;  // black
                else if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x >= 7'd28 && x <= 7'd31) pixel = 8'hA8;  // light gray
                else if (x == 7'd42) pixel = 8'h54;  // dark gray
                else if (x >= 7'd43 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h54;  // dark gray
                else if (x >= 7'd51 && x <= 7'd52) pixel = 8'h00;  // black
                else if (x >= 7'd89 && x <= 7'd90) pixel = 8'h54;  // dark gray
                else if (x >= 7'd91 && x <= 7'd96) pixel = 8'hA8;  // light gray
                else if (x >= 7'd97 && x <= 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd99) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd107 && x <= 7'd112) pixel = 8'h00;  // black
                else if (x == 7'd113) pixel = 8'h54;  // dark gray
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
                else if (x >= 7'd117 && x <= 7'd118) pixel = 8'h08;  // dark blue
                else if (x == 7'd119) pixel = 8'h54;  // dark gray
            end
            7'd99: begin
                if (x >= 7'd9 && x <= 7'd11) pixel = 8'h08;  // dark blue
                else if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x == 7'd15) pixel = 8'h54;  // dark gray
                else if (x >= 7'd16 && x <= 7'd22) pixel = 8'h00;  // black
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x >= 7'd42 && x <= 7'd48) pixel = 8'h00;  // black
                else if (x == 7'd49) pixel = 8'hA8;  // light gray
                else if (x >= 7'd51 && x <= 7'd52) pixel = 8'h00;  // black
                else if (x == 7'd53) pixel = 8'hA8;  // light gray
                else if (x >= 7'd88 && x <= 7'd89) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd95) pixel = 8'hA8;  // light gray
                else if (x == 7'd96) pixel = 8'h54;  // dark gray
                else if (x >= 7'd97 && x <= 7'd98) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd111) pixel = 8'h00;  // black
                else if (x == 7'd112) pixel = 8'h54;  // dark gray
                else if (x == 7'd115) pixel = 8'h54;  // dark gray
                else if (x >= 7'd116 && x <= 7'd117) pixel = 8'h08;  // dark blue
                else if (x == 7'd118) pixel = 8'h54;  // dark gray
            end
            7'd100: begin
                if (x >= 7'd10 && x <= 7'd12) pixel = 8'h08;  // dark blue
                else if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x == 7'd16) pixel = 8'hA8;  // light gray
                else if (x >= 7'd17 && x <= 7'd24) pixel = 8'h00;  // black
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x >= 7'd41 && x <= 7'd47) pixel = 8'h00;  // black
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd51) pixel = 8'h54;  // dark gray
                else if (x >= 7'd52 && x <= 7'd53) pixel = 8'h00;  // black
                else if (x >= 7'd87 && x <= 7'd88) pixel = 8'h54;  // dark gray
                else if (x >= 7'd89 && x <= 7'd94) pixel = 8'hA8;  // light gray
                else if (x == 7'd95) pixel = 8'h54;  // dark gray
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x == 7'd98) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x >= 7'd103 && x <= 7'd110) pixel = 8'h00;  // black
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x == 7'd114) pixel = 8'h54;  // dark gray
                else if (x >= 7'd115 && x <= 7'd116) pixel = 8'h08;  // dark blue
                else if (x == 7'd117) pixel = 8'h54;  // dark gray
            end
            7'd101: begin
                if (x >= 7'd11 && x <= 7'd13) pixel = 8'h08;  // dark blue
                else if (x == 7'd14) pixel = 8'h54;  // dark gray
                else if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x >= 7'd18 && x <= 7'd27) pixel = 8'h00;  // black
                else if (x >= 7'd28 && x <= 7'd29) pixel = 8'h54;  // dark gray
                else if (x >= 7'd30 && x <= 7'd36) pixel = 8'hA8;  // light gray
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'h54;  // dark gray
                else if (x >= 7'd39 && x <= 7'd46) pixel = 8'h00;  // black
                else if (x == 7'd47) pixel = 8'h54;  // dark gray
                else if (x >= 7'd52 && x <= 7'd53) pixel = 8'h00;  // black
                else if (x == 7'd54) pixel = 8'h54;  // dark gray
                else if (x >= 7'd86 && x <= 7'd87) pixel = 8'h54;  // dark gray
                else if (x >= 7'd88 && x <= 7'd94) pixel = 8'hA8;  // light gray
                else if (x >= 7'd95 && x <= 7'd97) pixel = 8'h00;  // black
                else if (x >= 7'd98 && x <= 7'd99) pixel = 8'h54;  // dark gray
                else if (x >= 7'd100 && x <= 7'd109) pixel = 8'h00;  // black
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
                else if (x >= 7'd113 && x <= 7'd115) pixel = 8'h08;  // dark blue
                else if (x == 7'd116) pixel = 8'h54;  // dark gray
            end
            7'd102: begin
                if (x == 7'd12) pixel = 8'h54;  // dark gray
                else if (x >= 7'd13 && x <= 7'd15) pixel = 8'h08;  // dark blue
                else if (x == 7'd16) pixel = 8'hA8;  // light gray
                else if (x == 7'd19) pixel = 8'h54;  // dark gray
                else if (x >= 7'd20 && x <= 7'd45) pixel = 8'h00;  // black
                else if (x == 7'd46) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h54;  // dark gray
                else if (x == 7'd50) pixel = 8'hA8;  // light gray
                else if (x == 7'd52) pixel = 8'h54;  // dark gray
                else if (x >= 7'd53 && x <= 7'd54) pixel = 8'h00;  // black
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'hA8;  // light gray
                else if (x >= 7'd85 && x <= 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd93) pixel = 8'hA8;  // light gray
                else if (x >= 7'd94 && x <= 7'd107) pixel = 8'h00;  // black
                else if (x == 7'd108) pixel = 8'h54;  // dark gray
                else if (x == 7'd111) pixel = 8'hA8;  // light gray
                else if (x >= 7'd112 && x <= 7'd114) pixel = 8'h08;  // dark blue
                else if (x == 7'd115) pixel = 8'h54;  // dark gray
            end
            7'd103: begin
                if (x == 7'd13) pixel = 8'h54;  // dark gray
                else if (x >= 7'd14 && x <= 7'd16) pixel = 8'h08;  // dark blue
                else if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x == 7'd20) pixel = 8'hA8;  // light gray
                else if (x == 7'd21) pixel = 8'h54;  // dark gray
                else if (x >= 7'd22 && x <= 7'd44) pixel = 8'h00;  // black
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x == 7'd49) pixel = 8'h00;  // black
                else if (x == 7'd50) pixel = 8'h08;  // dark blue
                else if (x >= 7'd53 && x <= 7'd55) pixel = 8'h00;  // black
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd92) pixel = 8'hA8;  // light gray
                else if (x == 7'd93) pixel = 8'h54;  // dark gray
                else if (x >= 7'd94 && x <= 7'd105) pixel = 8'h00;  // black
                else if (x == 7'd106) pixel = 8'h54;  // dark gray
                else if (x == 7'd110) pixel = 8'h54;  // dark gray
                else if (x >= 7'd111 && x <= 7'd113) pixel = 8'h08;  // dark blue
                else if (x == 7'd114) pixel = 8'hA8;  // light gray
            end
            7'd104: begin
                if (x == 7'd14) pixel = 8'hA8;  // light gray
                else if (x >= 7'd15 && x <= 7'd18) pixel = 8'h08;  // dark blue
                else if (x == 7'd19) pixel = 8'hA8;  // light gray
                else if (x == 7'd22) pixel = 8'hA8;  // light gray
                else if (x == 7'd23) pixel = 8'h54;  // dark gray
                else if (x >= 7'd24 && x <= 7'd42) pixel = 8'h00;  // black
                else if (x == 7'd43) pixel = 8'h54;  // dark gray
                else if (x >= 7'd47 && x <= 7'd50) pixel = 8'h08;  // dark blue
                else if (x == 7'd51) pixel = 8'hA8;  // light gray
                else if (x >= 7'd54 && x <= 7'd56) pixel = 8'h00;  // black
                else if (x == 7'd57) pixel = 8'hA8;  // light gray
                else if (x == 7'd81) pixel = 8'hA8;  // light gray
                else if (x >= 7'd82 && x <= 7'd83) pixel = 8'h54;  // dark gray
                else if (x >= 7'd84 && x <= 7'd91) pixel = 8'hA8;  // light gray
                else if (x == 7'd92) pixel = 8'h54;  // dark gray
                else if (x >= 7'd93 && x <= 7'd103) pixel = 8'h00;  // black
                else if (x == 7'd104) pixel = 8'h54;  // dark gray
                else if (x == 7'd108) pixel = 8'hA8;  // light gray
                else if (x >= 7'd109 && x <= 7'd112) pixel = 8'h08;  // dark blue
                else if (x == 7'd113) pixel = 8'hA8;  // light gray
            end
            7'd105: begin
                if (x == 7'd16) pixel = 8'h54;  // dark gray
                else if (x >= 7'd17 && x <= 7'd19) pixel = 8'h08;  // dark blue
                else if (x == 7'd20) pixel = 8'h54;  // dark gray
                else if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x == 7'd25) pixel = 8'hA8;  // light gray
                else if (x == 7'd26) pixel = 8'h54;  // dark gray
                else if (x >= 7'd27 && x <= 7'd39) pixel = 8'h00;  // black
                else if (x == 7'd40) pixel = 8'h54;  // dark gray
                else if (x == 7'd41) pixel = 8'hA8;  // light gray
                else if (x == 7'd45) pixel = 8'hA8;  // light gray
                else if (x >= 7'd46 && x <= 7'd51) pixel = 8'h08;  // dark blue
                else if (x == 7'd52) pixel = 8'hA8;  // light gray
                else if (x == 7'd54) pixel = 8'hA8;  // light gray
                else if (x >= 7'd55 && x <= 7'd57) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd59) pixel = 8'hA8;  // light gray
                else if (x == 7'd79) pixel = 8'hA8;  // light gray
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd90) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x >= 7'd92 && x <= 7'd100) pixel = 8'h00;  // black
                else if (x == 7'd101) pixel = 8'h54;  // dark gray
                else if (x == 7'd102) pixel = 8'hA8;  // light gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
                else if (x >= 7'd107 && x <= 7'd110) pixel = 8'h08;  // dark blue
                else if (x == 7'd111) pixel = 8'h54;  // dark gray
            end
            7'd106: begin
                if (x == 7'd17) pixel = 8'hA8;  // light gray
                else if (x >= 7'd18 && x <= 7'd22) pixel = 8'h08;  // dark blue
                else if (x == 7'd23) pixel = 8'hA8;  // light gray
                else if (x >= 7'd28 && x <= 7'd29) pixel = 8'hA8;  // light gray
                else if (x >= 7'd30 && x <= 7'd36) pixel = 8'h54;  // dark gray
                else if (x >= 7'd37 && x <= 7'd38) pixel = 8'hA8;  // light gray
                else if (x == 7'd43) pixel = 8'hA8;  // light gray
                else if (x >= 7'd44 && x <= 7'd47) pixel = 8'h08;  // dark blue
                else if (x >= 7'd48 && x <= 7'd49) pixel = 8'h00;  // black
                else if (x >= 7'd50 && x <= 7'd52) pixel = 8'h08;  // dark blue
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x >= 7'd56 && x <= 7'd58) pixel = 8'h00;  // black
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd61) pixel = 8'hA8;  // light gray
                else if (x >= 7'd76 && x <= 7'd77) pixel = 8'hA8;  // light gray
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd88) pixel = 8'hA8;  // light gray
                else if (x == 7'd89) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd92) pixel = 8'h00;  // black
                else if (x >= 7'd93 && x <= 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd99) pixel = 8'hA8;  // light gray
                else if (x == 7'd104) pixel = 8'hA8;  // light gray
                else if (x >= 7'd105 && x <= 7'd109) pixel = 8'h08;  // dark blue
                else if (x == 7'd110) pixel = 8'hA8;  // light gray
            end
            7'd107: begin
                if (x == 7'd19) pixel = 8'hA8;  // light gray
                else if (x >= 7'd20 && x <= 7'd21) pixel = 8'h08;  // dark blue
                else if (x == 7'd22) pixel = 8'h00;  // black
                else if (x >= 7'd23 && x <= 7'd24) pixel = 8'h08;  // dark blue
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x == 7'd26) pixel = 8'hA8;  // light gray
                else if (x == 7'd40) pixel = 8'hA8;  // light gray
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd42 && x <= 7'd45) pixel = 8'h08;  // dark blue
                else if (x >= 7'd46 && x <= 7'd50) pixel = 8'h00;  // black
                else if (x >= 7'd51 && x <= 7'd53) pixel = 8'h08;  // dark blue
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x >= 7'd57 && x <= 7'd59) pixel = 8'h00;  // black
                else if (x == 7'd60) pixel = 8'h54;  // dark gray
                else if (x >= 7'd61 && x <= 7'd65) pixel = 8'hA8;  // light gray
                else if (x >= 7'd71 && x <= 7'd74) pixel = 8'hA8;  // light gray
                else if (x == 7'd75) pixel = 8'h54;  // dark gray
                else if (x >= 7'd76 && x <= 7'd87) pixel = 8'hA8;  // light gray
                else if (x == 7'd88) pixel = 8'h54;  // dark gray
                else if (x >= 7'd89 && x <= 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x == 7'd101) pixel = 8'hA8;  // light gray
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h08;  // dark blue
                else if (x == 7'd105) pixel = 8'h00;  // black
                else if (x >= 7'd106 && x <= 7'd107) pixel = 8'h08;  // dark blue
                else if (x == 7'd108) pixel = 8'hA8;  // light gray
            end
            7'd108: begin
                if (x == 7'd21) pixel = 8'hA8;  // light gray
                else if (x == 7'd22) pixel = 8'h54;  // dark gray
                else if (x >= 7'd23 && x <= 7'd24) pixel = 8'h08;  // dark blue
                else if (x >= 7'd25 && x <= 7'd26) pixel = 8'h00;  // black
                else if (x >= 7'd27 && x <= 7'd29) pixel = 8'h08;  // dark blue
                else if (x >= 7'd30 && x <= 7'd31) pixel = 8'h54;  // dark gray
                else if (x == 7'd32) pixel = 8'hA8;  // light gray
                else if (x >= 7'd33 && x <= 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd36 && x <= 7'd43) pixel = 8'h08;  // dark blue
                else if (x >= 7'd44 && x <= 7'd51) pixel = 8'h00;  // black
                else if (x >= 7'd52 && x <= 7'd54) pixel = 8'h08;  // dark blue
                else if (x == 7'd55) pixel = 8'hA8;  // light gray
                else if (x == 7'd58) pixel = 8'h54;  // dark gray
                else if (x >= 7'd59 && x <= 7'd61) pixel = 8'h00;  // black
                else if (x >= 7'd62 && x <= 7'd63) pixel = 8'h54;  // dark gray
                else if (x >= 7'd64 && x <= 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd86) pixel = 8'h54;  // dark gray
                else if (x >= 7'd87 && x <= 7'd89) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
                else if (x == 7'd93) pixel = 8'hA8;  // light gray
                else if (x >= 7'd94 && x <= 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd100) pixel = 8'h08;  // dark blue
                else if (x >= 7'd101 && x <= 7'd102) pixel = 8'h00;  // black
                else if (x >= 7'd103 && x <= 7'd104) pixel = 8'h08;  // dark blue
                else if (x == 7'd105) pixel = 8'h54;  // dark gray
                else if (x == 7'd106) pixel = 8'hA8;  // light gray
            end
            7'd109: begin
                if (x == 7'd24) pixel = 8'hA8;  // light gray
                else if (x == 7'd25) pixel = 8'h54;  // dark gray
                else if (x >= 7'd26 && x <= 7'd27) pixel = 8'h08;  // dark blue
                else if (x >= 7'd28 && x <= 7'd36) pixel = 8'h00;  // black
                else if (x >= 7'd37 && x <= 7'd39) pixel = 8'h08;  // dark blue
                else if (x >= 7'd40 && x <= 7'd52) pixel = 8'h00;  // black
                else if (x >= 7'd53 && x <= 7'd55) pixel = 8'h08;  // dark blue
                else if (x == 7'd56) pixel = 8'hA8;  // light gray
                else if (x == 7'd59) pixel = 8'hA8;  // light gray
                else if (x == 7'd60) pixel = 8'h54;  // dark gray
                else if (x >= 7'd61 && x <= 7'd64) pixel = 8'h00;  // black
                else if (x >= 7'd65 && x <= 7'd66) pixel = 8'h54;  // dark gray
                else if (x >= 7'd67 && x <= 7'd82) pixel = 8'hA8;  // light gray
                else if (x >= 7'd83 && x <= 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd88) pixel = 8'h00;  // black
                else if (x == 7'd89) pixel = 8'hA8;  // light gray
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
                else if (x >= 7'd93 && x <= 7'd94) pixel = 8'h08;  // dark blue
                else if (x >= 7'd95 && x <= 7'd99) pixel = 8'h00;  // black
                else if (x >= 7'd100 && x <= 7'd101) pixel = 8'h08;  // dark blue
                else if (x == 7'd102) pixel = 8'h54;  // dark gray
                else if (x == 7'd103) pixel = 8'hA8;  // light gray
            end
            7'd110: begin
                if (x >= 7'd28 && x <= 7'd29) pixel = 8'hA8;  // light gray
                else if (x >= 7'd30 && x <= 7'd31) pixel = 8'h54;  // dark gray
                else if (x == 7'd32) pixel = 8'h08;  // dark blue
                else if (x >= 7'd33 && x <= 7'd35) pixel = 8'h54;  // dark gray
                else if (x >= 7'd36 && x <= 7'd37) pixel = 8'hA8;  // light gray
                else if (x >= 7'd38 && x <= 7'd39) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd40) pixel = 8'hE0;  // orange
                else if (x == 7'd41) pixel = 8'h54;  // dark gray
                else if (x >= 7'd42 && x <= 7'd53) pixel = 8'h00;  // black
                else if (x >= 7'd54 && x <= 7'd57) pixel = 8'h08;  // dark blue
                else if (x == 7'd58) pixel = 8'hA8;  // light gray
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x >= 7'd63 && x <= 7'd69) pixel = 8'h00;  // black
                else if (x >= 7'd70 && x <= 7'd81) pixel = 8'h54;  // dark gray
                else if (x >= 7'd82 && x <= 7'd86) pixel = 8'h00;  // black
                else if (x == 7'd87) pixel = 8'hA8;  // light gray
                else if (x == 7'd91) pixel = 8'h54;  // dark gray
                else if (x >= 7'd92 && x <= 7'd95) pixel = 8'h08;  // dark blue
                else if (x >= 7'd96 && x <= 7'd97) pixel = 8'h54;  // dark gray
                else if (x >= 7'd98 && x <= 7'd99) pixel = 8'hA8;  // light gray
            end
            7'd111: begin
                if (x >= 7'd39 && x <= 7'd41) pixel = 8'hE0;  // orange
                else if (x == 7'd42) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd43 && x <= 7'd55) pixel = 8'h00;  // black
                else if (x >= 7'd56 && x <= 7'd58) pixel = 8'h08;  // dark blue
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x == 7'd60) pixel = 8'hA8;  // light gray
                else if (x == 7'd64) pixel = 8'hA8;  // light gray
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x >= 7'd66 && x <= 7'd83) pixel = 8'h00;  // black
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x == 7'd85) pixel = 8'hA8;  // light gray
                else if (x == 7'd89) pixel = 8'h54;  // dark gray
                else if (x >= 7'd90 && x <= 7'd93) pixel = 8'h08;  // dark blue
            end
            7'd112: begin
                if (x >= 7'd40 && x <= 7'd42) pixel = 8'hE0;  // orange
                else if (x == 7'd43) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd44) pixel = 8'h40;  // dark red
                else if (x >= 7'd45 && x <= 7'd57) pixel = 8'h00;  // black
                else if (x >= 7'd58 && x <= 7'd61) pixel = 8'h08;  // dark blue
                else if (x == 7'd62) pixel = 8'h54;  // dark gray
                else if (x >= 7'd69 && x <= 7'd71) pixel = 8'hA8;  // light gray
                else if (x >= 7'd72 && x <= 7'd76) pixel = 8'h54;  // dark gray
                else if (x == 7'd77) pixel = 8'h00;  // black
                else if (x >= 7'd78 && x <= 7'd79) pixel = 8'h54;  // dark gray
                else if (x >= 7'd80 && x <= 7'd81) pixel = 8'hA8;  // light gray
                else if (x == 7'd87) pixel = 8'h54;  // dark gray
                else if (x >= 7'd88 && x <= 7'd90) pixel = 8'h08;  // dark blue
                else if (x == 7'd91) pixel = 8'h00;  // black
                else if (x == 7'd92) pixel = 8'hA8;  // light gray
            end
            7'd113: begin
                if (x >= 7'd41 && x <= 7'd44) pixel = 8'hE0;  // orange
                else if (x == 7'd45) pixel = 8'h54;  // dark gray
                else if (x >= 7'd46 && x <= 7'd59) pixel = 8'h00;  // black
                else if (x >= 7'd60 && x <= 7'd64) pixel = 8'h08;  // dark blue
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x >= 7'd66 && x <= 7'd67) pixel = 8'hA8;  // light gray
                else if (x == 7'd83) pixel = 8'hA8;  // light gray
                else if (x == 7'd84) pixel = 8'h54;  // dark gray
                else if (x >= 7'd85 && x <= 7'd88) pixel = 8'h08;  // dark blue
                else if (x == 7'd89) pixel = 8'h00;  // black
                else if (x == 7'd90) pixel = 8'h54;  // dark gray
            end
            7'd114: begin
                if (x >= 7'd43 && x <= 7'd45) pixel = 8'hE0;  // orange
                else if (x == 7'd46) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd47 && x <= 7'd62) pixel = 8'h00;  // black
                else if (x >= 7'd63 && x <= 7'd70) pixel = 8'h08;  // dark blue
                else if (x >= 7'd71 && x <= 7'd80) pixel = 8'h54;  // dark gray
                else if (x >= 7'd81 && x <= 7'd86) pixel = 8'h08;  // dark blue
                else if (x == 7'd87) pixel = 8'h00;  // black
                else if (x == 7'd88) pixel = 8'h54;  // dark gray
                else if (x == 7'd89) pixel = 8'hA8;  // light gray
            end
            7'd115: begin
                if (x >= 7'd44 && x <= 7'd47) pixel = 8'hE0;  // orange
                else if (x == 7'd48) pixel = 8'h54;  // dark gray
                else if (x >= 7'd49 && x <= 7'd66) pixel = 8'h00;  // black
                else if (x >= 7'd67 && x <= 7'd83) pixel = 8'h08;  // dark blue
                else if (x >= 7'd84 && x <= 7'd85) pixel = 8'h54;  // dark gray
                else if (x == 7'd86) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd87 && x <= 7'd88) pixel = 8'hE0;  // orange
            end
            7'd116: begin
                if (x >= 7'd46 && x <= 7'd48) pixel = 8'hE0;  // orange
                else if (x == 7'd49) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd50) pixel = 8'h40;  // dark red
                else if (x >= 7'd51 && x <= 7'd81) pixel = 8'h00;  // black
                else if (x == 7'd82) pixel = 8'h54;  // dark gray
                else if (x >= 7'd83 && x <= 7'd86) pixel = 8'hE0;  // orange
            end
            7'd117: begin
                if (x >= 7'd47 && x <= 7'd50) pixel = 8'hE0;  // orange
                else if (x == 7'd51) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd52 && x <= 7'd79) pixel = 8'h00;  // black
                else if (x == 7'd80) pixel = 8'h40;  // dark red
                else if (x == 7'd81) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd82 && x <= 7'd84) pixel = 8'hE0;  // orange
            end
            7'd118: begin
                if (x >= 7'd49 && x <= 7'd52) pixel = 8'hE0;  // orange
                else if (x == 7'd53) pixel = 8'h54;  // dark gray
                else if (x >= 7'd54 && x <= 7'd78) pixel = 8'h00;  // black
                else if (x == 7'd79) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd80 && x <= 7'd83) pixel = 8'hE0;  // orange
            end
            7'd119: begin
                if (x >= 7'd50 && x <= 7'd54) pixel = 8'hE0;  // orange
                else if (x == 7'd55) pixel = 8'h54;  // dark gray
                else if (x >= 7'd56 && x <= 7'd76) pixel = 8'h00;  // black
                else if (x == 7'd77) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd78 && x <= 7'd81) pixel = 8'hE0;  // orange
            end
            7'd120: begin
                if (x >= 7'd52 && x <= 7'd56) pixel = 8'hE0;  // orange
                else if (x == 7'd57) pixel = 8'h54;  // dark gray
                else if (x >= 7'd58 && x <= 7'd74) pixel = 8'h00;  // black
                else if (x == 7'd75) pixel = 8'h54;  // dark gray
                else if (x >= 7'd76 && x <= 7'd79) pixel = 8'hE0;  // orange
            end
            7'd121: begin
                if (x >= 7'd54 && x <= 7'd57) pixel = 8'hE0;  // orange
                else if (x == 7'd58) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd59) pixel = 8'h54;  // dark gray
                else if (x >= 7'd60 && x <= 7'd72) pixel = 8'h00;  // black
                else if (x == 7'd73) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd74 && x <= 7'd78) pixel = 8'hE0;  // orange
            end
            7'd122: begin
                if (x >= 7'd56 && x <= 7'd60) pixel = 8'hE0;  // orange
                else if (x == 7'd61) pixel = 8'h54;  // dark gray
                else if (x >= 7'd62 && x <= 7'd70) pixel = 8'h00;  // black
                else if (x == 7'd71) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd72 && x <= 7'd76) pixel = 8'hE0;  // orange
            end
            7'd123: begin
                if (x >= 7'd58 && x <= 7'd61) pixel = 8'hE0;  // orange
                else if (x == 7'd62) pixel = 8'h90;  // brown/orange shade
                else if (x == 7'd63) pixel = 8'h54;  // dark gray
                else if (x >= 7'd64 && x <= 7'd68) pixel = 8'h00;  // black
                else if (x == 7'd69) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd70 && x <= 7'd74) pixel = 8'hE0;  // orange
            end
            7'd124: begin
                if (x >= 7'd60 && x <= 7'd64) pixel = 8'hE0;  // orange
                else if (x == 7'd65) pixel = 8'h54;  // dark gray
                else if (x == 7'd66) pixel = 8'h00;  // black
                else if (x == 7'd67) pixel = 8'h90;  // brown/orange shade
                else if (x >= 7'd68 && x <= 7'd72) pixel = 8'hE0;  // orange
            end
            7'd125: begin
                if (x >= 7'd62 && x <= 7'd70) pixel = 8'hE0;  // orange
            end
            7'd126: begin
                if (x >= 7'd64 && x <= 7'd68) pixel = 8'hE0;  // orange
            end
            default: begin
                pixel = 8'hFC;
            end
        endcase
    end

endmodule

`default_nettype wire